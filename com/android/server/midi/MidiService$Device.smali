.class final Lcom/android/server/midi/MidiService$Device;
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
    name = "Device"
.end annotation


# instance fields
.field private final mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mDeviceConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/midi/MidiService$DeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

.field private mServer:Landroid/media/midi/IMidiDeviceServer;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 314
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 315
    iput-object p2, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 317
    # getter for: Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I
    invoke-static {p1}, Lcom/android/server/midi/MidiService;->access$400(Lcom/android/server/midi/MidiService;)I

    move-result p1

    iput p1, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 318
    return-void
.end method

.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V
    .registers 7
    .param p2, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p3, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p4, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p5, "uid"    # I

    .line 305
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 306
    iput-object p3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 307
    iput-object p4, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 308
    iput p5, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 309
    invoke-virtual {p3}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bluetooth_device"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 311
    invoke-direct {p0, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 312
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService$Device;

    .line 285
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService$Device;
    .param p1, "x1"    # Landroid/media/midi/IMidiDeviceServer;

    .line 285
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/midi/MidiService$Device;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService$Device;
    .param p1, "x1"    # Landroid/content/ServiceConnection;

    .line 285
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method private setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 5
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;

    .line 321
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 322
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v2, :cond_11

    .line 323
    const-string v0, "MidiService"

    const-string/jumbo v1, "mServer already set in setDeviceServer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 326
    :cond_11
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 328
    .local v2, "binder":Landroid/os/IBinder;
    :try_start_15
    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 329
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_25

    .line 333
    nop

    .line 334
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/midi/MidiService;->access$500(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v2    # "binder":Landroid/os/IBinder;
    goto :goto_46

    .line 330
    .restart local v2    # "binder":Landroid/os/IBinder;
    :catch_25
    move-exception v1

    .line 331
    .local v1, "e":Landroid/os/RemoteException;
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 332
    return-void

    .line 335
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_29
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v2, :cond_46

    .line 336
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 337
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 339
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 340
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/midi/MidiService;->access$500(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :try_start_3e
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->closeDevice()V

    .line 344
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_44} :catch_45

    .line 347
    goto :goto_46

    .line 345
    :catch_45
    move-exception v1

    .line 350
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_60

    .line 351
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 352
    .local v1, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v1, p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    .line 353
    .end local v1    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    goto :goto_50

    .line 355
    :cond_60
    return-void
.end method


# virtual methods
.method public addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .registers 8
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 395
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v0

    .line 396
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v1, :cond_13

    .line 397
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-virtual {p1, v1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    goto/16 :goto_90

    .line 399
    :cond_13
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_86

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_86

    .line 401
    :cond_20
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v1, Lcom/android/server/midi/MidiService$Device$1;

    invoke-direct {v1, p0}, Lcom/android/server/midi/MidiService$Device$1;-><init>(Lcom/android/server/midi/MidiService$Device;)V

    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 431
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_44

    .line 432
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.midi.BluetoothMidiService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.bluetoothmidiservice"

    const-string v5, "com.android.bluetoothmidiservice.BluetoothMidiService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_5b

    .line 437
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_44
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.midi.MidiDeviceService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 442
    :goto_5b
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/midi/MidiService;->access$900(Lcom/android/server/midi/MidiService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_85

    .line 444
    const-string v3, "MidiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0, v2}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 446
    iput-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 448
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_85
    goto :goto_90

    .line 449
    :cond_86
    const-string v1, "MidiService"

    const-string v3, "No way to connect to device in addDeviceConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p1, v2}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    .line 452
    :goto_90
    monitor-exit v0

    .line 453
    return-void

    .line 452
    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_3 .. :try_end_94} :catchall_92

    throw v1
.end method

.method public binderDied()V
    .registers 4

    .line 499
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/midi/MidiService;->access$1000(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 501
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 502
    monitor-exit v0

    .line 503
    return-void

    .line 502
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw v1
.end method

.method public closeLocked()V
    .registers 5

    .line 476
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v0

    .line 477
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 478
    .local v2, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$DeviceConnection;->getClient()Lcom/android/server/midi/MidiService$Client;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    .line 479
    .end local v2    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    goto :goto_9

    .line 480
    :cond_1d
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 481
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_4a

    .line 482
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 486
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_31

    .line 487
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    # invokes: Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    invoke-static {v0, p0}, Lcom/android/server/midi/MidiService;->access$1100(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V

    goto :goto_3a

    .line 489
    :cond_31
    new-instance v0, Landroid/media/midi/MidiDeviceStatus;

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-direct {v0, v1}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;)V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 492
    :goto_3a
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_49

    .line 493
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/midi/MidiService;->access$1200(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_49
    return-void

    .line 481
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public getDeviceServer()Landroid/media/midi/IMidiDeviceServer;
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method public getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    :goto_a
    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 387
    iget v0, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    return v0
.end method

.method public isUidAllowed(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 391
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    if-ne v0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .registers 5
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 456
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v0

    .line 457
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 459
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_38

    .line 460
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/midi/MidiService;->access$900(Lcom/android/server/midi/MidiService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 461
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 462
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_35

    .line 464
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/midi/MidiService;->access$1000(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_3a

    .line 465
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 466
    monitor-exit v1

    goto :goto_38

    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    :try_start_34
    throw v2

    .line 468
    :cond_35
    invoke-direct {p0, v1}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 471
    :cond_38
    :goto_38
    monitor-exit v0

    .line 472
    return-void

    .line 471
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 2
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .line 363
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 364
    return-void
.end method

.method public setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V
    .registers 2
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 371
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 372
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device Info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 509
    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 511
    const-string v1, " UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget v1, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    const-string v1, " DeviceConnection count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    const-string v1, " mServiceConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
