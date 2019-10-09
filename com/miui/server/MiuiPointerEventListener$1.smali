.class Lcom/miui/server/MiuiPointerEventListener$1;
.super Landroid/database/ContentObserver;
.source "MiuiPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/MiuiPointerEventListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiPointerEventListener;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiPointerEventListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/server/MiuiPointerEventListener;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/miui/server/MiuiPointerEventListener$1;->this$0:Lcom/miui/server/MiuiPointerEventListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 75
    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener$1;->this$0:Lcom/miui/server/MiuiPointerEventListener;

    iget-object v1, p0, Lcom/miui/server/MiuiPointerEventListener$1;->this$0:Lcom/miui/server/MiuiPointerEventListener;

    # getter for: Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/server/MiuiPointerEventListener;->access$100(Lcom/miui/server/MiuiPointerEventListener;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_three_gesture"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    # setter for: Lcom/miui/server/MiuiPointerEventListener;->mEnable:Z
    invoke-static {v0, v3}, Lcom/miui/server/MiuiPointerEventListener;->access$002(Lcom/miui/server/MiuiPointerEventListener;Z)Z

    .line 78
    return-void
.end method
