.class Lcom/miui/server/SecSpaceManagerService$1;
.super Landroid/database/ContentObserver;
.source "SecSpaceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SecSpaceManagerService;->registerContentObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Handler;

    .line 71
    iput-object p2, p0, Lcom/miui/server/SecSpaceManagerService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 74
    iget-object v0, p0, Lcom/miui/server/SecSpaceManagerService$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/miui/server/SecSpaceManagerService;->getSecondSpaceId(Landroid/content/Context;)I
    invoke-static {v0}, Lcom/miui/server/SecSpaceManagerService;->access$000(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/server/SecSpaceManagerService;->SECOND_USER_ID:I

    .line 75
    return-void
.end method
