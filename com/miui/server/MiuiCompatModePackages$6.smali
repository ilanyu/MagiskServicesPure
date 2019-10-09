.class Lcom/miui/server/MiuiCompatModePackages$6;
.super Ljava/lang/Object;
.source "MiuiCompatModePackages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/MiuiCompatModePackages;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 942
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$6;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 945
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$6;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # getter for: Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$1600(Lcom/miui/server/MiuiCompatModePackages;)Lmiui/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 946
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$6;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # getter for: Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$1500(Lcom/miui/server/MiuiCompatModePackages;)Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    move-result-object v0

    const/16 v1, 0x69

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages$6;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # getter for: Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;
    invoke-static {v2}, Lcom/miui/server/MiuiCompatModePackages;->access$1600(Lcom/miui/server/MiuiCompatModePackages;)Lmiui/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 948
    :cond_25
    return-void
.end method
