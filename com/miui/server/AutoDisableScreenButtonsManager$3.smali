.class Lcom/miui/server/AutoDisableScreenButtonsManager$3;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/AutoDisableScreenButtonsManager;->showFloat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;


# direct methods
.method constructor <init>(Lcom/miui/server/AutoDisableScreenButtonsManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 217
    iput-object p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$3;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 219
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$3;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # getter for: Lcom/miui/server/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$200(Lcom/miui/server/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->dismiss()V

    .line 220
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$3;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    const/4 v1, 0x1

    # invokes: Lcom/miui/server/AutoDisableScreenButtonsManager;->saveTmpDisableButtonsStatus(Z)V
    invoke-static {v0, v1}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$100(Lcom/miui/server/AutoDisableScreenButtonsManager;Z)V

    .line 221
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$3;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # invokes: Lcom/miui/server/AutoDisableScreenButtonsManager;->showPromptsIfNeeds()Z
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$800(Lcom/miui/server/AutoDisableScreenButtonsManager;)Z

    .line 224
    return-void
.end method
