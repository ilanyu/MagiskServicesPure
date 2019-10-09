.class Lcom/android/server/VibratorServiceInjector$MyContextWrapper;
.super Landroid/content/ContextWrapper;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyContextWrapper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .line 183
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 184
    return-void
.end method


# virtual methods
.method public getMainLooper()Landroid/os/Looper;
    .registers 2

    .line 188
    # getter for: Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$000()Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
