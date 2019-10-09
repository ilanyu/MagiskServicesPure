.class final Lcom/android/server/midi/MidiService$Client;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Client"
.end annotation


# instance fields
.field private final mDeviceConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$DeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/media/midi/IMidiDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPid:I

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "token"    # Landroid/os/IBinder;

    .line 144
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 141
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 145
    iput-object p2, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    .line 146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 147
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/midi/MidiService$Client;->mPid:I

    .line 148
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/midi/MidiService$Client;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService$Client;

    .line 130
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    return v0
.end method

.method private close()V
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/midi/MidiService;->access$300(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 235
    :try_start_7
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/midi/MidiService;->access$300(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 237
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_38

    .line 239
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 240
    .local v1, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v1}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/midi/MidiService$Device;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    .line 241
    .end local v1    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    goto :goto_23

    .line 242
    :cond_37
    return-void

    .line 237
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method


# virtual methods
.method public addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 6
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 168
    new-instance v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {v0, v1, p1, p0, p2}, Lcom/android/server/midi/MidiService$DeviceConnection;-><init>(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;Lcom/android/server/midi/MidiService$Client;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 169
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    .line 171
    return-void
.end method

.method public addListener(Landroid/media/midi/IMidiDeviceListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .line 157
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public binderDied()V
    .registers 4

    .line 246
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 248
    return-void
.end method

.method public deviceAdded(Lcom/android/server/midi/MidiService$Device;)V
    .registers 6
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    .line 194
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 196
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 198
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :try_start_d
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/IMidiDeviceListener;

    .line 199
    .local v2, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v2, v0}, Landroid/media/midi/IMidiDeviceListener;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_26} :catch_28

    .line 200
    .end local v2    # "listener":Landroid/media/midi/IMidiDeviceListener;
    goto :goto_17

    .line 203
    :cond_27
    goto :goto_31

    .line 201
    :catch_28
    move-exception v1

    .line 202
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MidiService"

    const-string/jumbo v3, "remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method public deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V
    .registers 6
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    .line 208
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 210
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 212
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :try_start_d
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/IMidiDeviceListener;

    .line 213
    .local v2, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v2, v0}, Landroid/media/midi/IMidiDeviceListener;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_26} :catch_28

    .line 214
    .end local v2    # "listener":Landroid/media/midi/IMidiDeviceListener;
    goto :goto_17

    .line 217
    :cond_27
    goto :goto_31

    .line 215
    :catch_28
    move-exception v1

    .line 216
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MidiService"

    const-string/jumbo v3, "remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method public deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 6
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 222
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 225
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/IMidiDeviceListener;

    .line 226
    .local v1, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v1, p2}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_22} :catch_24

    .line 227
    .end local v1    # "listener":Landroid/media/midi/IMidiDeviceListener;
    goto :goto_13

    .line 230
    :cond_23
    goto :goto_2d

    .line 228
    :catch_24
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MidiService"

    const-string/jumbo v2, "remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method

.method public getUid()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    return v0
.end method

.method public removeDeviceConnection(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 175
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 176
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    if-eqz v0, :cond_11

    .line 177
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/midi/MidiService$Device;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    .line 179
    :cond_11
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_24

    .line 180
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 182
    :cond_24
    return-void
.end method

.method public removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .registers 4
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 186
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 188
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 190
    :cond_1c
    return-void
.end method

.method public removeListener(Landroid/media/midi/IMidiDeviceListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .line 161
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 163
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 165
    :cond_1c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Client: UID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, " PID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lcom/android/server/midi/MidiService$Client;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, " listener count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, " Device Connections:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 260
    .local v2, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    const-string v3, " <device "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .end local v2    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    goto :goto_33

    .line 264
    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
