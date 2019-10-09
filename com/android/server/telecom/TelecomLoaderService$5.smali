.class Lcom/android/server/telecom/TelecomLoaderService$5;
.super Landroid/content/BroadcastReceiver;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerCarrierConfigChangedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;

.field final synthetic val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 317
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    iput-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 321
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_24

    aget v3, v0, v2

    .line 322
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    iget-object v5, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    # invokes: Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(Landroid/content/pm/PackageManagerInternal;I)V
    invoke-static {v4, v5, v3}, Lcom/android/server/telecom/TelecomLoaderService;->access$800(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;I)V

    .line 321
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 325
    :cond_24
    return-void
.end method
