.class Lcom/miui/server/AutoDisableScreenButtonsManager$4;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 226
    iput-object p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$4;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$4;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # getter for: Lcom/miui/server/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$200(Lcom/miui/server/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->dismiss()V

    .line 229
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$4;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # invokes: Lcom/miui/server/AutoDisableScreenButtonsManager;->showSettings()V
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$900(Lcom/miui/server/AutoDisableScreenButtonsManager;)V

    .line 230
    const/4 v0, 0x1

    return v0
.end method
