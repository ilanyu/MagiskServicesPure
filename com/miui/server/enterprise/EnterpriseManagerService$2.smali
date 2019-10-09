.class Lcom/miui/server/enterprise/EnterpriseManagerService$2;
.super Ljava/lang/Object;
.source "EnterpriseManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/EnterpriseManagerService;->bootComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/EnterpriseManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/enterprise/EnterpriseManagerService;

    .line 99
    iput-object p1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$2;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$2;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    # invokes: Lcom/miui/server/enterprise/EnterpriseManagerService;->loadEnterpriseCert()V
    invoke-static {v0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->access$500(Lcom/miui/server/enterprise/EnterpriseManagerService;)V

    .line 103
    return-void
.end method
