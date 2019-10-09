.class Lcom/miui/server/AutoDisableScreenButtonsManager$5;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/AutoDisableScreenButtonsManager;->showPromptsIfNeeds()Z
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

    .line 253
    iput-object p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$5;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 256
    move-object v0, p1

    check-cast v0, Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 257
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$5;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    # getter for: Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$300(Lcom/miui/server/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ADSB_NOT_SHOW_PROMPTS"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/AutoDisableScreenButtonsHelper;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    :cond_19
    return-void
.end method
