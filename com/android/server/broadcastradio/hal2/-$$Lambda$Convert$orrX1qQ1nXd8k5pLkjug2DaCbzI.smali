.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$orrX1qQ1nXd8k5pLkjug2DaCbzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$orrX1qQ1nXd8k5pLkjug2DaCbzI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$orrX1qQ1nXd8k5pLkjug2DaCbzI;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$orrX1qQ1nXd8k5pLkjug2DaCbzI;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$orrX1qQ1nXd8k5pLkjug2DaCbzI;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$orrX1qQ1nXd8k5pLkjug2DaCbzI;

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

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p1
.end method
