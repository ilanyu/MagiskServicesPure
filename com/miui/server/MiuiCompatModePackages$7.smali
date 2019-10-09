.class Lcom/miui/server/MiuiCompatModePackages$7;
.super Ljava/lang/Object;
.source "MiuiCompatModePackages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 964
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$7;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 967
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$7;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    const/4 v1, 0x0

    # setter for: Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/miui/server/MiuiCompatModePackages;->access$1602(Lcom/miui/server/MiuiCompatModePackages;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;

    .line 968
    return-void
.end method
