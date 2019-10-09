.class Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 652
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    .line 654
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .line 658
    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder is dead - unregister "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 662
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 663
    .local v2, "token":Landroid/os/IBinder;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 664
    .local v3, "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 665
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/BluetoothManagerService;->updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I

    .line 666
    goto :goto_4e

    .line 668
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;"
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_4d
    goto :goto_26

    .line 669
    :cond_4e
    :goto_4e
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 672
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
