.class Lcom/android/server/input/InputForwarder;
.super Landroid/app/IInputForwarder$Stub;
.source "InputForwarder.java"


# instance fields
.field private final mDisplayId:I

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 36
    invoke-direct {p0}, Landroid/app/IInputForwarder$Stub;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/server/input/InputForwarder;->mDisplayId:I

    .line 38
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/input/InputForwarder;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 39
    return-void
.end method


# virtual methods
.method public forwardEvent(Landroid/view/InputEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 43
    iget-object v0, p0, Lcom/android/server/input/InputForwarder;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    iget v1, p0, Lcom/android/server/input/InputForwarder;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/input/InputManagerInternal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method
