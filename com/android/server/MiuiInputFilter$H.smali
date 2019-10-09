.class Lcom/android/server/MiuiInputFilter$H;
.super Landroid/os/Handler;
.source "MiuiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final MSG_DOUBLE_CLICK_DELAY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/MiuiInputFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/MiuiInputFilter;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 98
    iput-object p1, p0, Lcom/android/server/MiuiInputFilter$H;->this$0:Lcom/android/server/MiuiInputFilter;

    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_b

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter$H;->this$0:Lcom/android/server/MiuiInputFilter;

    invoke-virtual {v0}, Lcom/android/server/MiuiInputFilter;->flushPending()V

    .line 109
    :goto_b
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 110
    return-void
.end method
