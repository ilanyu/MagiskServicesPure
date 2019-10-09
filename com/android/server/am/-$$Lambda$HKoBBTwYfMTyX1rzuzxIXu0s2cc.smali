.class public final synthetic Lcom/android/server/am/-$$Lambda$HKoBBTwYfMTyX1rzuzxIXu0s2cc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$HKoBBTwYfMTyX1rzuzxIXu0s2cc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$HKoBBTwYfMTyX1rzuzxIXu0s2cc;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$HKoBBTwYfMTyX1rzuzxIXu0s2cc;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$HKoBBTwYfMTyX1rzuzxIXu0s2cc;->INSTANCE:Lcom/android/server/am/-$$Lambda$HKoBBTwYfMTyX1rzuzxIXu0s2cc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/server/am/ContentProviderRecord;

    invoke-interface {p1}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method
