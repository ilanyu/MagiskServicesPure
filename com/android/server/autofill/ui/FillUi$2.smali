.class Lcom/android/server/autofill/ui/FillUi$2;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/FillUi;->newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 367
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$2;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .line 371
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1a

    const-string v0, "FillUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring click on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method
