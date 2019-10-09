.class public final synthetic Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$06pwP7nH4-Aq27SqBfqb-dAMhzc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

.field private final synthetic f$1:Lcom/android/server/am/AppWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;Lcom/android/server/am/AppWarnings;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$06pwP7nH4-Aq27SqBfqb-dAMhzc;->f$0:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$06pwP7nH4-Aq27SqBfqb-dAMhzc;->f$1:Lcom/android/server/am/AppWarnings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$06pwP7nH4-Aq27SqBfqb-dAMhzc;->f$0:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$06pwP7nH4-Aq27SqBfqb-dAMhzc;->f$1:Lcom/android/server/am/AppWarnings;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->lambda$new$0(Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;Lcom/android/server/am/AppWarnings;Landroid/content/DialogInterface;I)V

    return-void
.end method
