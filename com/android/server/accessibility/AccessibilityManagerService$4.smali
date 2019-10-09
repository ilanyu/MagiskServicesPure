.class Lcom/android/server/accessibility/AccessibilityManagerService$4;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field final synthetic val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

.field final synthetic val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1726
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1730
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1731
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1735
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 1736
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1738
    .local v2, "identity":J
    :try_start_24
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "touch_exploration_enabled"

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_44

    .line 1742
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1743
    nop

    .line 1744
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1745
    return-void

    .line 1742
    :catchall_44
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
