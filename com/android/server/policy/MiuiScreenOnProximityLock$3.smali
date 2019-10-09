.class Lcom/android/server/policy/MiuiScreenOnProximityLock$3;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;->prepareHintWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .line 184
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 187
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->forceShow()V

    .line 188
    const/4 v0, 0x1

    return v0
.end method
