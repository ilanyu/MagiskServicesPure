.class Lcom/android/server/power/PowerManagerServiceInjector$4;
.super Ljava/lang/Object;
.source "PowerManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerServiceInjector;->isShutdownOrRebootPermitted(Landroid/content/Context;ZZLjava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceInjector$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceInjector$4;->val$context:Landroid/content/Context;

    .line 412
    const v1, 0x110b00f8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 417
    return-void
.end method
