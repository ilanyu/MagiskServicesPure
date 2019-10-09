.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$16;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerMobileLatencyAppsChangedObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

.field final synthetic val$observer:Landroid/database/ContentObserver;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 955
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iput-object p2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$16;->val$observer:Landroid/database/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 958
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$16;->val$observer:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 959
    return-void
.end method
