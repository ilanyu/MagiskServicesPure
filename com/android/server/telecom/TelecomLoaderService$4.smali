.class Lcom/android/server/telecom/TelecomLoaderService$4;
.super Landroid/database/ContentObserver;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppNotifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;

.field final synthetic val$defaultDialerAppUri:Landroid/net/Uri;

.field final synthetic val$defaultSmsAppUri:Landroid/net/Uri;

.field final synthetic val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/pm/PackageManagerInternal;Landroid/net/Uri;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 285
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    iput-object p3, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultSmsAppUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p5, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultDialerAppUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 288
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultSmsAppUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 289
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 290
    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 289
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 291
    .local v0, "smsComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_1e

    .line 292
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 293
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-virtual {v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V

    .line 295
    .end local v0    # "smsComponent":Landroid/content/ComponentName;
    :cond_1e
    goto :goto_3f

    :cond_1f
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultDialerAppUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 296
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 297
    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 299
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0, p3}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V

    .line 302
    :cond_38
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    # invokes: Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(Landroid/content/pm/PackageManagerInternal;I)V
    invoke-static {v1, v2, p3}, Lcom/android/server/telecom/TelecomLoaderService;->access$800(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;I)V

    .line 304
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3f
    :goto_3f
    return-void
.end method
