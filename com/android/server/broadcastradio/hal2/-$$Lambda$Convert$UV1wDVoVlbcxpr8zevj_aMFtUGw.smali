.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$UV1wDVoVlbcxpr8zevj_aMFtUGw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$UV1wDVoVlbcxpr8zevj_aMFtUGw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$UV1wDVoVlbcxpr8zevj_aMFtUGw;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
