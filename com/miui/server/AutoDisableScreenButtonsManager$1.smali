.class Lcom/miui/server/AutoDisableScreenButtonsManager$1;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/AutoDisableScreenButtonsManager;->onStatusBarVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/miui/server/AutoDisableScreenButtonsManager;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 75
    iput-object p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    iput-boolean p2, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 77
    iget-boolean v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->val$visible:Z

    if-eqz v0, :cond_24

    .line 79
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # getter for: Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$000(Lcom/miui/server/AutoDisableScreenButtonsManager;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 80
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    const/4 v1, 0x0

    # invokes: Lcom/miui/server/AutoDisableScreenButtonsManager;->saveTmpDisableButtonsStatus(Z)V
    invoke-static {v0, v1}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$100(Lcom/miui/server/AutoDisableScreenButtonsManager;Z)V

    .line 82
    :cond_12
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # getter for: Lcom/miui/server/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$200(Lcom/miui/server/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 83
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # getter for: Lcom/miui/server/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$200(Lcom/miui/server/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->dismiss()V

    goto :goto_4f

    .line 85
    :cond_24
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # getter for: Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$300(Lcom/miui/server/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/miui/server/AutoDisableScreenButtonsManager;->getRunningTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$400(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 86
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_4f

    .line 87
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # getter for: Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$300(Lcom/miui/server/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lmiui/util/AutoDisableScreenButtonsHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, "flag":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_48

    .line 90
    iget-object v3, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # invokes: Lcom/miui/server/AutoDisableScreenButtonsManager;->saveTmpDisableButtonsStatus(Z)V
    invoke-static {v3, v4}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$100(Lcom/miui/server/AutoDisableScreenButtonsManager;Z)V

    goto :goto_4f

    .line 91
    :cond_48
    if-ne v2, v4, :cond_4f

    .line 92
    iget-object v3, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # invokes: Lcom/miui/server/AutoDisableScreenButtonsManager;->showFloat()V
    invoke-static {v3}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$500(Lcom/miui/server/AutoDisableScreenButtonsManager;)V

    .line 96
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "flag":I
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    iget-boolean v1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$1;->val$visible:Z

    # setter for: Lcom/miui/server/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z
    invoke-static {v0, v1}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$602(Lcom/miui/server/AutoDisableScreenButtonsManager;Z)Z

    .line 97
    return-void
.end method
