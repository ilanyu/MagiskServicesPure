.class Lcom/android/server/StorageManagerService$MountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 3476
    iput-object p1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 3477
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 3478
    iput-object p3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    .line 3479
    iput p4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    .line 3480
    return-void
.end method


# virtual methods
.method public handleExecute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/StorageManagerService$ObbException;
        }
    .end annotation

    .line 3484
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->warnOnNotMounted()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$4600(Lcom/android/server/StorageManagerService;)V

    .line 3486
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$MountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v0

    .line 3488
    .local v0, "obbInfo":Landroid/content/res/ObbInfo;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, v0, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    # invokes: Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    invoke-static {v1, v2, v3}, Lcom/android/server/StorageManagerService;->access$4700(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 3494
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$4200(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 3495
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$4300(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v3, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 3496
    .local v2, "isMounted":Z
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_cf

    .line 3497
    if-nez v2, :cond_b4

    .line 3504
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v1, :cond_37

    .line 3505
    const-string/jumbo v1, "none"

    .line 3506
    .local v1, "hashedKey":Ljava/lang/String;
    const-string v3, ""

    .line 3506
    .local v3, "binderKey":Ljava/lang/String;
    goto :goto_65

    .line 3509
    .end local v1    # "hashedKey":Ljava/lang/String;
    .end local v3    # "binderKey":Ljava/lang/String;
    :cond_37
    :try_start_37
    const-string v1, "PBKDF2WithHmacSHA1"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 3511
    .local v1, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v5, v0, Landroid/content/res/ObbInfo;->salt:[B

    const/16 v6, 0x400

    const/16 v7, 0x80

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 3513
    .local v3, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 3514
    .local v4, "key":Ljavax/crypto/SecretKey;
    new-instance v5, Ljava/math/BigInteger;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>([B)V

    .line 3515
    .local v5, "bi":Ljava/math/BigInteger;
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_61
    .catch Ljava/security/GeneralSecurityException; {:try_start_37 .. :try_end_61} :catch_ab

    .line 3516
    .local v6, "hashedKey":Ljava/lang/String;
    nop

    .line 3516
    .end local v1    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v3    # "ks":Ljava/security/spec/KeySpec;
    .end local v4    # "key":Ljavax/crypto/SecretKey;
    .end local v5    # "bi":Ljava/math/BigInteger;
    move-object v3, v6

    .line 3519
    .local v3, "binderKey":Ljava/lang/String;
    nop

    .line 3518
    move-object v1, v6

    .line 3523
    .end local v6    # "hashedKey":Ljava/lang/String;
    .local v1, "hashedKey":Ljava/lang/String;
    :goto_65
    :try_start_65
    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v6, v6, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget v7, v7, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    invoke-interface {v5, v6, v3, v7}, Landroid/os/IVold;->createObb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 3525
    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v5, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/os/IVold;->mount(Ljava/lang/String;II)V

    .line 3530
    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$4200(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_91} :catch_a2

    .line 3531
    :try_start_91
    iget-object v5, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v6, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    # invokes: Lcom/android/server/StorageManagerService;->addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    invoke-static {v5, v6}, Lcom/android/server/StorageManagerService;->access$4800(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 3532
    monitor-exit v4
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_9f

    .line 3534
    const/4 v4, 0x1

    :try_start_9a
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService$MountObbAction;->notifyObbStateChange(I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_a2

    .line 3537
    nop

    .line 3538
    return-void

    .line 3532
    :catchall_9f
    move-exception v5

    :try_start_a0
    monitor-exit v4
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    :try_start_a1
    throw v5
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a2} :catch_a2

    .line 3535
    :catch_a2
    move-exception v4

    .line 3536
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v6, 0x15

    invoke-direct {v5, v6, v4}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 3517
    .end local v1    # "hashedKey":Ljava/lang/String;
    .end local v3    # "binderKey":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_ab
    move-exception v1

    .line 3518
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v1}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 3498
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_b4
    new-instance v1, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v3, 0x18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 3496
    .end local v2    # "isMounted":Z
    :catchall_cf
    move-exception v2

    :try_start_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v2

    .line 3489
    :cond_d2
    new-instance v1, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v2, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Denied attempt to mount OBB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " which is owned by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3543
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3544
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3545
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
