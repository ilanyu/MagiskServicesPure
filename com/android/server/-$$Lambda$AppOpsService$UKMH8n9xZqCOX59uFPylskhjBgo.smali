.class public final synthetic Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/android/server/AppOpsService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/AppOpsService;->lambda$UKMH8n9xZqCOX59uFPylskhjBgo(Lcom/android/server/AppOpsService;II)V

    return-void
.end method
