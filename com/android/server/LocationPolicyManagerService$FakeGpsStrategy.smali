.class Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;
.super Ljava/lang/Object;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeGpsStrategy"
.end annotation


# instance fields
.field private mFakeGpsOn:Z

.field private mHasLocation:Z

.field private mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mPhoneStationary:Z

.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 2

    .line 1103
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    .line 1105
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    .line 1106
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    .line 1107
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    .line 1108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    .line 1109
    return-void
.end method

.method private notifyListeners(Z)V
    .registers 5
    .param p1, "stationary"    # Z

    .line 1179
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 1180
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    .line 1181
    .local v2, "listener":Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;
    invoke-interface {v2, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;->onStationaryChanged(Z)V

    .line 1182
    .end local v2    # "listener":Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;
    goto :goto_9

    .line 1183
    :cond_19
    monitor-exit v0

    .line 1184
    return-void

    .line 1183
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private setLocation(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .line 1134
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 1135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    .line 1136
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    goto :goto_13

    .line 1137
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    if-nez v0, :cond_13

    .line 1138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    .line 1140
    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1159
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "miui gps provider info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n            on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    stationary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  mHasLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_67

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  mLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    :cond_67
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1167
    return-void
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .line 1151
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    if-eqz v0, :cond_7

    .line 1152
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    return-object v0

    .line 1154
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method getOnState()Z
    .registers 2

    .line 1143
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    return v0
.end method

.method getPhoneStationary()Z
    .registers 2

    .line 1147
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    return v0
.end method

.method registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    .line 1170
    if-eqz p1, :cond_17

    .line 1171
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 1172
    :try_start_5
    const-string v1, "LocationPolicy"

    const-string/jumbo v2, "register Status in strategy"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 1176
    :cond_17
    :goto_17
    return-void
.end method

.method setOnState(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 1112
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    if-eq v0, p1, :cond_6

    .line 1113
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    .line 1115
    :cond_6
    return-void
.end method

.method setPhoneStationay(ZLandroid/location/Location;)V
    .registers 4
    .param p1, "stationary"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1118
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    if-eq v0, p1, :cond_15

    .line 1119
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    .line 1120
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->notifyListeners(Z)V

    .line 1121
    if-eqz p1, :cond_f

    .line 1122
    invoke-direct {p0, p2}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->setLocation(Landroid/location/Location;)V

    goto :goto_15

    .line 1124
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    .line 1125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    .line 1128
    :cond_15
    :goto_15
    return-void
.end method
