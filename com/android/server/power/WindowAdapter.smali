.class public Lcom/android/server/power/WindowAdapter;
.super Ljava/lang/Object;
.source "WindowAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUseNotchRegion(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 10
    return-void
.end method
