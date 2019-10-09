.class Lcom/android/server/location/ContextHubServiceUtil;
.super Ljava/lang/Object;
.source "ContextHubServiceUtil.java"


# static fields
.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final TAG:Ljava/lang/String; = "ContextHubServiceUtil"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPermissions(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 203
    const-string v0, "android.permission.LOCATION_HARDWARE"

    const-string v1, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method static copyToByteArrayList([BLjava/util/ArrayList;)V
    .registers 6
    .param p0, "inputArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "outputArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 74
    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_17

    aget-byte v2, p0, v1

    .line 76
    .local v2, "element":B
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v2    # "element":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 78
    :cond_17
    return-void
.end method

.method static createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .line 57
    .local p0, "hubList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "contextHubIdToInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/hardware/location/ContextHubInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 59
    .local v2, "contextHub":Landroid/hardware/contexthub/V1_0/ContextHub;
    iget v3, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v4, v2}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v2    # "contextHub":Landroid/hardware/contexthub/V1_0/ContextHub;
    goto :goto_9

    .line 62
    :cond_24
    return-object v0
.end method

.method static createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .registers 5
    .param p0, "hostEndPoint"    # S
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 171
    new-instance v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 173
    .local v0, "hidlMessage":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    .line 174
    iput-short p0, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 175
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    .line 176
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/server/location/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V

    .line 178
    return-object v0
.end method

.method static createHidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    .registers 5
    .param p0, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;

    .line 122
    new-instance v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 125
    .local v0, "hidlNanoAppBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    .line 126
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    .line 127
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    .line 128
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    .line 129
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    .line 134
    :try_start_23
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/server/location/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V
    :try_end_2c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23 .. :try_end_2c} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_2c} :catch_2d

    goto :goto_40

    .line 137
    :catch_2d
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "ContextHubServiceUtil"

    const-string v3, "NanoApp binary was null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_41

    .line 135
    :catch_36
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "ContextHubServiceUtil"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_40
    nop

    .line 141
    :goto_41
    return-object v0
.end method

.method static createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;
    .registers 7
    .param p0, "message"    # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 189
    iget-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->createPrimitiveByteArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 191
    .local v0, "messageArray":[B
    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    iget-short v4, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_12
    invoke-static {v1, v2, v3, v0, v4}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;

    move-result-object v1

    return-object v1
.end method

.method static createNanoAppStateList(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;"
        }
    .end annotation

    .line 153
    .local p0, "nanoAppInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "nanoAppStateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/NanoAppState;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 155
    .local v2, "appInfo":Landroid/hardware/contexthub/V1_0/HubAppInfo;
    new-instance v3, Landroid/hardware/location/NanoAppState;

    iget-wide v4, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iget v6, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iget-boolean v7, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/hardware/location/NanoAppState;-><init>(JIZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v2    # "appInfo":Landroid/hardware/contexthub/V1_0/HubAppInfo;
    goto :goto_9

    .line 159
    :cond_24
    return-object v0
.end method

.method static createPrimitiveByteArray(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 88
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 89
    .local v0, "primitiveArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 90
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 93
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method static createPrimitiveIntArray(Ljava/util/Collection;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 102
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 104
    .local v0, "primitiveArray":[I
    const/4 v1, 0x0

    .line 105
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 106
    .local v3, "contextHubId":I
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    aput v3, v0, v1

    .line 107
    .end local v1    # "i":I
    .end local v3    # "contextHubId":I
    nop

    .line 105
    move v1, v4

    goto :goto_b

    .line 109
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method static toTransactionResult(I)I
    .registers 2
    .param p0, "halResult"    # I

    .line 216
    if-eqz p0, :cond_10

    const/4 v0, 0x5

    if-eq p0, v0, :cond_e

    packed-switch p0, :pswitch_data_12

    .line 228
    const/4 v0, 0x1

    return v0

    .line 222
    :pswitch_a
    const/4 v0, 0x3

    return v0

    .line 220
    :pswitch_c
    const/4 v0, 0x2

    return v0

    .line 224
    :cond_e
    const/4 v0, 0x4

    return v0

    .line 218
    :cond_10
    const/4 v0, 0x0

    return v0

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method
