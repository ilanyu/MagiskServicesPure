.class public abstract Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;
.super Landroid/os/Binder;
.source "IMiuiPerfService.java"

# interfaces
.implements Lcom/miui/daemon/performance/server/IMiuiPerfService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/daemon/performance/server/IMiuiPerfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.daemon.performance.server.IMiuiPerfService"

.field static final TRANSACTION_abortMatchingScenario:I = 0x7

.field static final TRANSACTION_abortSpecificScenario:I = 0x8

.field static final TRANSACTION_beginScenario:I = 0x6

.field static final TRANSACTION_dump:I = 0x3

.field static final TRANSACTION_finishMatchingScenario:I = 0x9

.field static final TRANSACTION_finishSpecificScenario:I = 0xa

.field static final TRANSACTION_getPerfEventSocketFd:I = 0x5

.field static final TRANSACTION_markPerceptibleJank:I = 0x1

.field static final TRANSACTION_reportActivityLaunchRecords:I = 0x2

.field static final TRANSACTION_reportExcessiveCpuUsageRecords:I = 0xb

.field static final TRANSACTION_reportNotificationClick:I = 0xc

.field static final TRANSACTION_setSchedFgPid:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/daemon/performance/server/IMiuiPerfService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_4
    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_14

    .line 37
    move-object v1, v0

    check-cast v1, Lcom/miui/daemon/performance/server/IMiuiPerfService;

    return-object v1

    .line 39
    :cond_14
    new-instance v1, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 32
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 52
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v13, v0, :cond_1f9

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v13, :pswitch_data_200

    .line 191
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 176
    :pswitch_18
    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "postPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    .line 180
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "intent":Landroid/content/Intent;
    goto :goto_31

    .line 182
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_30
    nop

    .line 184
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 185
    .local v2, "uptimeMillis":J
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->reportNotificationClick(Ljava/lang/String;Landroid/content/Intent;J)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    return v10

    .line 168
    .end local v0    # "postPackage":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uptimeMillis":J
    :pswitch_3c
    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 170
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {v12, v0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->reportExcessiveCpuUsageRecords(Ljava/util/List;)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    return v10

    .line 155
    .end local v0    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_4e
    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 157
    .local v9, "scenarioBundle":Landroid/os/Bundle;
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/statistics/E2EScenarioPayload;

    .line 158
    .local v11, "payload":Landroid/os/statistics/E2EScenarioPayload;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 159
    .local v16, "uptimeMillis":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 160
    .local v18, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 161
    .local v19, "tid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 162
    .local v20, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 163
    .local v21, "packageName":Ljava/lang/String;
    move-object v0, v12

    move-object v1, v9

    move-object v2, v11

    move-wide/from16 v3, v16

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v10

    .line 141
    .end local v9    # "scenarioBundle":Landroid/os/Bundle;
    .end local v11    # "payload":Landroid/os/statistics/E2EScenarioPayload;
    .end local v16    # "uptimeMillis":J
    .end local v18    # "pid":I
    .end local v19    # "tid":I
    .end local v20    # "processName":Ljava/lang/String;
    .end local v21    # "packageName":Ljava/lang/String;
    :pswitch_86
    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/statistics/E2EScenario;

    .line 143
    .local v11, "scenario":Landroid/os/statistics/E2EScenario;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 144
    .local v16, "tag":Ljava/lang/String;
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/statistics/E2EScenarioPayload;

    .line 145
    .local v17, "payload":Landroid/os/statistics/E2EScenarioPayload;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 146
    .local v18, "uptimeMillis":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 147
    .local v20, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 148
    .local v21, "tid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 149
    .local v22, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 150
    .local v23, "packageName":Ljava/lang/String;
    move-object v0, v12

    move-object v1, v11

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-wide/from16 v4, v18

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    return v10

    .line 129
    .end local v11    # "scenario":Landroid/os/statistics/E2EScenario;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "payload":Landroid/os/statistics/E2EScenarioPayload;
    .end local v18    # "uptimeMillis":J
    .end local v20    # "pid":I
    .end local v21    # "tid":I
    .end local v22    # "processName":Ljava/lang/String;
    .end local v23    # "packageName":Ljava/lang/String;
    :pswitch_c9
    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 131
    .local v8, "scenarioBundle":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 132
    .local v16, "uptimeMillis":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 133
    .local v9, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 134
    .local v11, "tid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 135
    .local v18, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 136
    .local v19, "packageName":Ljava/lang/String;
    move-object v0, v12

    move-object v1, v8

    move-wide/from16 v2, v16

    move v4, v9

    move v5, v11

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->abortSpecificScenario(Landroid/os/Bundle;JIILjava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    return v10

    .line 116
    .end local v8    # "scenarioBundle":Landroid/os/Bundle;
    .end local v9    # "pid":I
    .end local v11    # "tid":I
    .end local v16    # "uptimeMillis":J
    .end local v18    # "processName":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    :pswitch_f7
    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/statistics/E2EScenario;

    .line 118
    .local v9, "scenario":Landroid/os/statistics/E2EScenario;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 120
    .restart local v16    # "uptimeMillis":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 121
    .local v18, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 122
    .local v19, "tid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 123
    .local v20, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 124
    .local v21, "packageName":Ljava/lang/String;
    move-object v0, v12

    move-object v1, v9

    move-object v2, v11

    move-wide/from16 v3, v16

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    return v10

    .line 99
    .end local v9    # "scenario":Landroid/os/statistics/E2EScenario;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v16    # "uptimeMillis":J
    .end local v18    # "pid":I
    .end local v19    # "tid":I
    .end local v20    # "processName":Ljava/lang/String;
    .end local v21    # "packageName":Ljava/lang/String;
    :pswitch_12f
    const-string v2, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/os/statistics/E2EScenario;

    .line 101
    .local v16, "scenario":Landroid/os/statistics/E2EScenario;
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/os/statistics/E2EScenarioSettings;

    .line 102
    .local v17, "settings":Landroid/os/statistics/E2EScenarioSettings;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 103
    .local v18, "tag":Ljava/lang/String;
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/os/statistics/E2EScenarioPayload;

    .line 104
    .local v19, "payload":Landroid/os/statistics/E2EScenarioPayload;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 105
    .local v20, "uptimeMillis":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 106
    .local v22, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 107
    .local v23, "tid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 108
    .local v24, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 109
    .local v25, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v10, :cond_16c

    move v11, v10

    goto :goto_16d

    :cond_16c
    move v11, v0

    .line 110
    .local v11, "needResultBundle":Z
    :goto_16d
    move-object v0, v12

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-wide/from16 v5, v20

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move v13, v10

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v11}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 113
    return v13

    .line 87
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v11    # "needResultBundle":Z
    .end local v16    # "scenario":Landroid/os/statistics/E2EScenario;
    .end local v17    # "settings":Landroid/os/statistics/E2EScenarioSettings;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "payload":Landroid/os/statistics/E2EScenarioPayload;
    .end local v20    # "uptimeMillis":J
    .end local v22    # "pid":I
    .end local v23    # "tid":I
    .end local v24    # "processName":Ljava/lang/String;
    .end local v25    # "packageName":Ljava/lang/String;
    :pswitch_18c
    move v13, v10

    const-string v1, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 89
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v1, :cond_1a2

    .line 91
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v1, v15, v13}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a5

    .line 94
    :cond_1a2
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    :goto_1a5
    return v13

    .line 80
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_1a6
    move v13, v10

    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .local v0, "pid":I
    invoke-virtual {v12, v0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->setSchedFgPid(I)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v13

    .line 73
    .end local v0    # "pid":I
    :pswitch_1b7
    move v13, v10

    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "args":[Ljava/lang/String;
    invoke-virtual {v12, v0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->dump([Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v13

    .line 66
    .end local v0    # "args":[Ljava/lang/String;
    :pswitch_1c8
    move v13, v10

    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    .local v0, "launchRecords":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {v12, v0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->reportActivityLaunchRecords(Ljava/util/List;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v13

    .line 58
    .end local v0    # "launchRecords":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_1db
    move v13, v10

    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f1

    .line 60
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    nop

    :cond_1f1
    move-object v0, v1

    .line 61
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v12, v0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->markPerceptibleJank(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v13

    .line 54
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1f9
    move v13, v10

    const-string v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v13

    :pswitch_data_200
    .packed-switch 0x1
        :pswitch_1db
        :pswitch_1c8
        :pswitch_1b7
        :pswitch_1a6
        :pswitch_18c
        :pswitch_12f
        :pswitch_f7
        :pswitch_c9
        :pswitch_86
        :pswitch_4e
        :pswitch_3c
        :pswitch_18
    .end packed-switch
.end method
