.class Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelecomServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p2, "x1"    # Lcom/android/server/telecom/TelecomLoaderService$1;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 12
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 63
    :try_start_0
    new-instance v0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 69
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 70
    const-string/jumbo v0, "telecom"

    invoke-static {v0, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 72
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_10e

    .line 73
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 74
    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v1

    if-eqz v1, :cond_109

    .line 75
    :cond_37
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 76
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 78
    .local v1, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 79
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 80
    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v2

    .line 79
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 81
    .local v2, "smsComponent":Landroid/content/ComponentName;
    if-eqz v2, :cond_80

    .line 82
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v3}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    .line 83
    .local v3, "requestCount":I
    add-int/lit8 v4, v3, -0x1

    .line 83
    .local v4, "i":I
    :goto_60
    if-ltz v4, :cond_80

    .line 84
    iget-object v5, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v5}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    .line 85
    .local v5, "userid":I
    iget-object v6, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v6}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/IntArray;->remove(I)V

    .line 86
    nop

    .line 87
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-virtual {v1, v6, v5}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V

    .line 83
    .end local v5    # "userid":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_60

    .line 92
    .end local v2    # "smsComponent":Landroid/content/ComponentName;
    .end local v3    # "requestCount":I
    .end local v4    # "i":I
    :cond_80
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 93
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 94
    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v2

    .line 93
    invoke-static {v2}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_bb

    .line 96
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v3}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    .line 97
    .restart local v3    # "requestCount":I
    add-int/lit8 v4, v3, -0x1

    .line 97
    .restart local v4    # "i":I
    :goto_a0
    if-ltz v4, :cond_bb

    .line 98
    iget-object v5, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v5}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    .line 99
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v6}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/IntArray;->remove(I)V

    .line 100
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V

    .line 97
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_a0

    .line 105
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "requestCount":I
    .end local v4    # "i":I
    :cond_bb
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v2

    if-eqz v2, :cond_109

    .line 106
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 107
    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 108
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 109
    .local v3, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v3, :cond_109

    .line 110
    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v4}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    .line 111
    .local v4, "requestCount":I
    nop

    .line 112
    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "packageName":Ljava/lang/String;
    add-int/lit8 v6, v4, -0x1

    .line 113
    .local v6, "i":I
    :goto_ed
    if-ltz v6, :cond_109

    .line 114
    iget-object v7, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v7}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/IntArray;->get(I)I

    move-result v7

    .line 115
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v8}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/util/IntArray;->remove(I)V

    .line 116
    nop

    .line 117
    invoke-virtual {v1, v5, v7}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 113
    .end local v7    # "userId":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_ed

    .line 123
    .end local v1    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v2    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v3    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "requestCount":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_109
    monitor-exit v0

    .line 126
    goto :goto_116

    .line 123
    :catchall_10b
    move-exception v1

    monitor-exit v0
    :try_end_10d
    .catchall {:try_start_1f .. :try_end_10d} :catchall_10b

    :try_start_10d
    throw v1
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_10e} :catch_10e

    .line 124
    :catch_10e
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomLoaderService"

    const-string v2, "Failed linking to death."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_116
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 131
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # invokes: Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$000(Lcom/android/server/telecom/TelecomLoaderService;)V

    .line 132
    return-void
.end method
