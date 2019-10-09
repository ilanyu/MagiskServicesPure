.class public final synthetic Landroid/net/ip/-$$Lambda$IpClient$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/ip/-$$Lambda$IpClient$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;

    invoke-direct {v0}, Landroid/net/ip/-$$Lambda$IpClient$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;-><init>()V

    sput-object v0, Landroid/net/ip/-$$Lambda$IpClient$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;

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

    invoke-static {p1}, Landroid/net/ip/IpClient;->lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
