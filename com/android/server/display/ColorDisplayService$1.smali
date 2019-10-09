.class Lcom/android/server/display/ColorDisplayService$1;
.super Landroid/database/ContentObserver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/ColorDisplayService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 160
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    iput-object p3, p0, Lcom/android/server/display/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 163
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    # getter for: Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I
    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$100(Lcom/android/server/display/ColorDisplayService;)I

    move-result v1

    # invokes: Lcom/android/server/display/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    invoke-static {v0, v1}, Lcom/android/server/display/ColorDisplayService;->access$200(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 164
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;
    invoke-static {v0, v1}, Lcom/android/server/display/ColorDisplayService;->access$302(Lcom/android/server/display/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 167
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    # getter for: Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService;->access$400(Lcom/android/server/display/ColorDisplayService;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 168
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    # invokes: Lcom/android/server/display/ColorDisplayService;->setUp()V
    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService;->access$500(Lcom/android/server/display/ColorDisplayService;)V

    .line 171
    :cond_26
    return-void
.end method
