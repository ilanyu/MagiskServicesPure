.class Lcom/android/server/UidStateHelper$2;
.super Ljava/lang/Object;
.source "UidStateHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UidStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UidStateHelper;


# direct methods
.method constructor <init>(Lcom/android/server/UidStateHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/UidStateHelper;

    .line 186
    iput-object p1, p0, Lcom/android/server/UidStateHelper$2;->this$0:Lcom/android/server/UidStateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 196
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 192
    .local v0, "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 193
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/server/UidStateHelper$2;->this$0:Lcom/android/server/UidStateHelper;

    # invokes: Lcom/android/server/UidStateHelper;->dispatchUidStateChange(II)V
    invoke-static {v3, v0, v2}, Lcom/android/server/UidStateHelper;->access$500(Lcom/android/server/UidStateHelper;II)V

    .line 194
    return v1
.end method
