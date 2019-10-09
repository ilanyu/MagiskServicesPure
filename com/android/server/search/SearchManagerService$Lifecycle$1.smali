.class Lcom/android/server/search/SearchManagerService$Lifecycle$1;
.super Ljava/lang/Object;
.source "SearchManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/search/SearchManagerService$Lifecycle;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/search/SearchManagerService$Lifecycle;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/search/SearchManagerService$Lifecycle;

    .line 78
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

    iput p2, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

    # getter for: Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;
    invoke-static {v0}, Lcom/android/server/search/SearchManagerService$Lifecycle;->access$000(Lcom/android/server/search/SearchManagerService$Lifecycle;)Lcom/android/server/search/SearchManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->val$userId:I

    # invokes: Lcom/android/server/search/SearchManagerService;->onUnlockUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/search/SearchManagerService;->access$100(Lcom/android/server/search/SearchManagerService;I)V

    .line 82
    return-void
.end method
