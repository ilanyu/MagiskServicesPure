.class public Lcom/android/server/input/MiuiBaseInputManagerService;
.super Lcom/android/server/input/InputManagerService;
.source "MiuiBaseInputManagerService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 9
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method
