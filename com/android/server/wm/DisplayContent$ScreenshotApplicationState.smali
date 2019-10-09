.class final Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScreenshotApplicationState"
.end annotation


# instance fields
.field appWin:Lcom/android/server/wm/WindowState;

.field maxLayer:I

.field minLayer:I

.field screenshotReady:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset(Z)V
    .registers 3
    .param p1, "screenshotReady"    # Z

    .line 3319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    .line 3320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->maxLayer:I

    .line 3321
    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    .line 3322
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->screenshotReady:Z

    .line 3323
    if-eqz p1, :cond_d

    goto :goto_10

    :cond_d
    const v0, 0x7fffffff

    :goto_10
    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    .line 3324
    return-void
.end method
