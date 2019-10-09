.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$687mZTUrupnt857GOjw3XcKgrWE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$687mZTUrupnt857GOjw3XcKgrWE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$687mZTUrupnt857GOjw3XcKgrWE;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$687mZTUrupnt857GOjw3XcKgrWE;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$687mZTUrupnt857GOjw3XcKgrWE;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$687mZTUrupnt857GOjw3XcKgrWE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    check-cast p2, Landroid/os/RemoteCallbackList;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$687mZTUrupnt857GOjw3XcKgrWE(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/RemoteCallbackList;)V

    return-void
.end method
