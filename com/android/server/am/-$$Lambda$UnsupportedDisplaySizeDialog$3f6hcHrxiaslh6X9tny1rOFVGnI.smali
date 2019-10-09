.class public final synthetic Lcom/android/server/am/-$$Lambda$UnsupportedDisplaySizeDialog$3f6hcHrxiaslh6X9tny1rOFVGnI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

.field private final synthetic f$1:Lcom/android/server/am/AppWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UnsupportedDisplaySizeDialog;Lcom/android/server/am/AppWarnings;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UnsupportedDisplaySizeDialog$3f6hcHrxiaslh6X9tny1rOFVGnI;->f$0:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$UnsupportedDisplaySizeDialog$3f6hcHrxiaslh6X9tny1rOFVGnI;->f$1:Lcom/android/server/am/AppWarnings;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UnsupportedDisplaySizeDialog$3f6hcHrxiaslh6X9tny1rOFVGnI;->f$0:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$UnsupportedDisplaySizeDialog$3f6hcHrxiaslh6X9tny1rOFVGnI;->f$1:Lcom/android/server/am/AppWarnings;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->lambda$new$0(Lcom/android/server/am/UnsupportedDisplaySizeDialog;Lcom/android/server/am/AppWarnings;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
