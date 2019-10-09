.class Lcom/android/server/MiuiInputFilter$ClickableRect;
.super Ljava/lang/Object;
.source "MiuiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClickableRect"
.end annotation


# instance fields
.field public mClickListener:Ljava/lang/Runnable;

.field public mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "listener"    # Ljava/lang/Runnable;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/server/MiuiInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    .line 118
    iput-object p2, p0, Lcom/android/server/MiuiInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    .line 119
    return-void
.end method
