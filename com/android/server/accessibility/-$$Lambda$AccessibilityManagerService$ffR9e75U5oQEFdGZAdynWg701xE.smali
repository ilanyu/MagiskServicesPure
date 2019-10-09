.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ffR9e75U5oQEFdGZAdynWg701xE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ffR9e75U5oQEFdGZAdynWg701xE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ffR9e75U5oQEFdGZAdynWg701xE;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ffR9e75U5oQEFdGZAdynWg701xE;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ffR9e75U5oQEFdGZAdynWg701xE;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ffR9e75U5oQEFdGZAdynWg701xE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$notifyClientsOfServicesStateChange$3(Landroid/view/accessibility/IAccessibilityManagerClient;)V

    return-void
.end method
