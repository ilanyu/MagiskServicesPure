.class Lcom/miui/server/AutoDisableScreenButtonsManager$2;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/AutoDisableScreenButtonsManager;->showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/miui/server/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 193
    iput-object p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$2;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    iput-object p2, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$2;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$2;->this$0:Lcom/miui/server/AutoDisableScreenButtonsManager;

    iget-object v1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager$2;->val$text:Ljava/lang/CharSequence;

    # invokes: Lcom/miui/server/AutoDisableScreenButtonsManager;->showToastInner(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/miui/server/AutoDisableScreenButtonsManager;->access$700(Lcom/miui/server/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method
