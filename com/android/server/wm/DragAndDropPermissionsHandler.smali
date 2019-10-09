.class Lcom/android/server/wm/DragAndDropPermissionsHandler;
.super Lcom/android/internal/view/IDragAndDropPermissions$Stub;
.source "DragAndDropPermissionsHandler.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private mActivityToken:Landroid/os/IBinder;

.field private final mMode:I

.field private mPermissionOwnerToken:Landroid/os/IBinder;

.field private final mSourceUid:I

.field private final mSourceUserId:I

.field private final mTargetPackage:Ljava/lang/String;

.field private final mTargetUserId:I

.field private mTransientToken:Landroid/os/IBinder;

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/ClipData;ILjava/lang/String;III)V
    .registers 8
    .param p1, "clipData"    # Landroid/content/ClipData;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "sourceUserId"    # I
    .param p6, "targetUserId"    # I

    .line 46
    invoke-direct {p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 42
    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 43
    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    .line 47
    iput p2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    .line 48
    iput-object p3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    .line 49
    iput p4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    .line 50
    iput p5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    .line 51
    iput p6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 54
    return-void
.end method

.method private doTake(Landroid/os/IBinder;)V
    .registers 14
    .param p1, "permissionOwner"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 73
    .local v0, "origId":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 74
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget v6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    iget-object v7, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/net/Uri;

    iget v9, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    iget v10, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    iget v11, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    .line 74
    move-object v5, p1

    invoke-interface/range {v4 .. v11}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_30

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 79
    .end local v2    # "i":I
    :cond_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    nop

    .line 81
    return-void

    .line 79
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->release()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 131
    goto :goto_5

    .line 129
    :catch_4
    move-exception v0

    .line 132
    :goto_5
    return-void
.end method

.method public release()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-nez v0, :cond_9

    .line 98
    return-void

    .line 101
    :cond_9
    const/4 v0, 0x0

    .line 102
    .local v0, "permissionOwner":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    .line 104
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 105
    invoke-interface {v1, v4}, Landroid/app/IActivityManager;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_22
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    move-object v0, v1

    .line 110
    iput-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 111
    goto :goto_31

    .line 110
    :catchall_1e
    move-exception v1

    iput-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    throw v1

    .line 106
    :catch_22
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    iput-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 108
    return-void

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 114
    iput-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 115
    iget-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 116
    iput-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    .line 119
    :goto_31
    nop

    .local v2, "i":I
    :goto_32
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 120
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget v4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    iget v5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    .line 120
    invoke-interface {v2, v0, v3, v4, v5}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 119
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_32

    .line 123
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method public take(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v0, :cond_9

    goto :goto_19

    .line 61
    :cond_9
    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 64
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 65
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    .local v0, "permissionOwner":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    .line 68
    return-void

    .line 59
    .end local v0    # "permissionOwner":Landroid/os/IBinder;
    :cond_19
    :goto_19
    return-void
.end method

.method public takeTransient(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "transientToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v0, :cond_9

    goto :goto_23

    .line 88
    :cond_9
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "drop"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 89
    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    .line 93
    return-void

    .line 86
    :cond_23
    :goto_23
    return-void
.end method
