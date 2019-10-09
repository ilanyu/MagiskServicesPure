.class Lcom/android/server/InputMethodManagerService$6;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    .line 3951
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$6;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 3954
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3955
    :try_start_5
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1300(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1300(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    array-length v1, v1

    if-le v1, p2, :cond_5c

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 3956
    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v1

    array-length v1, v1

    if-gt v1, p2, :cond_28

    goto :goto_5c

    .line 3959
    :cond_28
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1300(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    aget-object v1, v1, p2

    .line 3960
    .local v1, "im":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    aget v2, v2, p2

    .line 3961
    .local v2, "subtypeId":I
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$6;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    iput p2, v3, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 3962
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$6;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    .line 3963
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 3964
    if-eqz v1, :cond_5a

    .line 3965
    if-ltz v2, :cond_50

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-lt v2, v3, :cond_51

    .line 3966
    :cond_50
    const/4 v2, -0x1

    .line 3968
    :cond_51
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 3970
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "subtypeId":I
    :cond_5a
    monitor-exit v0

    .line 3971
    return-void

    .line 3957
    :cond_5c
    :goto_5c
    monitor-exit v0

    return-void

    .line 3970
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_5e

    throw v1
.end method
