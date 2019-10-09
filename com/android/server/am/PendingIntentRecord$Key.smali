.class final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field final activity:Lcom/android/server/am/ActivityRecord;

.field allIntents:[Landroid/content/Intent;

.field allResolvedTypes:[Ljava/lang/String;

.field final flags:I

.field final hashCode:I

.field final options:Lcom/android/server/am/SafeActivityOptions;

.field final packageName:Ljava/lang/String;

.field final requestCode:I

.field final requestIntent:Landroid/content/Intent;

.field final requestResolvedType:Ljava/lang/String;

.field final type:I

.field final userId:I

.field final who:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/am/SafeActivityOptions;I)V
    .registers 15
    .param p1, "_t"    # I
    .param p2, "_p"    # Ljava/lang/String;
    .param p3, "_a"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "_w"    # Ljava/lang/String;
    .param p5, "_r"    # I
    .param p6, "_i"    # [Landroid/content/Intent;
    .param p7, "_it"    # [Ljava/lang/String;
    .param p8, "_f"    # I
    .param p9, "_o"    # Lcom/android/server/am/SafeActivityOptions;
    .param p10, "_userId"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 82
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    .line 84
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 85
    iput p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 86
    const/4 v0, 0x0

    if-eqz p6, :cond_16

    array-length v1, p6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p6, v1

    goto :goto_17

    :cond_16
    move-object v1, v0

    :goto_17
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 87
    if-eqz p7, :cond_21

    array-length v0, p7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p7, v0

    nop

    :cond_21
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 89
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 90
    iput p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 91
    iput-object p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/am/SafeActivityOptions;

    .line 92
    iput p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 94
    const/16 v0, 0x17

    .line 95
    .local v0, "hash":I
    const/16 v1, 0x25

    mul-int v2, v1, v0

    add-int/2addr v2, p8

    .line 96
    .end local v0    # "hash":I
    .local v2, "hash":I
    mul-int v0, v1, v2

    add-int/2addr v0, p5

    .line 97
    .end local v2    # "hash":I
    .restart local v0    # "hash":I
    mul-int v2, v1, v0

    add-int/2addr v2, p10

    .line 98
    .end local v0    # "hash":I
    .restart local v2    # "hash":I
    if-eqz p4, :cond_44

    .line 99
    mul-int v0, v1, v2

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    .line 101
    :cond_44
    if-eqz p3, :cond_4e

    .line 102
    mul-int v0, v1, v2

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    .line 104
    :cond_4e
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5c

    .line 105
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->filterHashCode()I

    move-result v3

    add-int v2, v0, v3

    .line 107
    :cond_5c
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_6a

    .line 108
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    .line 110
    :cond_6a
    mul-int v0, v1, v2

    if-eqz p2, :cond_73

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    :goto_74
    add-int/2addr v0, v3

    .line 111
    .end local v2    # "hash":I
    .restart local v0    # "hash":I
    mul-int/2addr v1, v0

    add-int/2addr v1, p1

    .line 112
    .end local v0    # "hash":I
    .local v1, "hash":I
    iput v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 115
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 118
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 119
    return v0

    .line 122
    :cond_4
    :try_start_4
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 123
    .local v1, "other":Lcom/android/server/am/PendingIntentRecord$Key;
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-eq v2, v3, :cond_e

    .line 124
    return v0

    .line 126
    :cond_e
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v2, v3, :cond_15

    .line 127
    return v0

    .line 129
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 130
    return v0

    .line 132
    :cond_20
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-eq v2, v3, :cond_27

    .line 133
    return v0

    .line 135
    :cond_27
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 136
    return v0

    .line 138
    :cond_32
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-eq v2, v3, :cond_39

    .line 139
    return v0

    .line 141
    :cond_39
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v2, v3, :cond_53

    .line 142
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_4e

    .line 143
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 144
    return v0

    .line 146
    :cond_4e
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_53

    .line 147
    return v0

    .line 150
    :cond_53
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 151
    return v0

    .line 153
    :cond_5e
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_62
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_62} :catch_67

    if-eq v2, v3, :cond_65

    .line 154
    return v0

    .line 156
    :cond_65
    const/4 v0, 0x1

    return v0

    .line 157
    .end local v1    # "other":Lcom/android/server/am/PendingIntentRecord$Key;
    :catch_67
    move-exception v1

    .line 159
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2d

    .line 170
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_2d
    const-string v1, "<null>"

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method typeName()Ljava/lang/String;
    .registers 2

    .line 175
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    packed-switch v0, :pswitch_data_20

    .line 187
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :pswitch_c
    const-string/jumbo v0, "startForegroundService"

    return-object v0

    .line 181
    :pswitch_10
    const-string/jumbo v0, "startService"

    return-object v0

    .line 185
    :pswitch_14
    const-string v0, "activityResult"

    return-object v0

    .line 177
    :pswitch_17
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 179
    :pswitch_1b
    const-string v0, "broadcastIntent"

    return-object v0

    nop

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method
