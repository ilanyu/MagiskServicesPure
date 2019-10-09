.class public final synthetic Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$-qxDAAo5wjq2G7x-F8gQeNSxIxY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$-qxDAAo5wjq2G7x-F8gQeNSxIxY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$-qxDAAo5wjq2G7x-F8gQeNSxIxY;

    invoke-direct {v0}, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$-qxDAAo5wjq2G7x-F8gQeNSxIxY;-><init>()V

    sput-object v0, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$-qxDAAo5wjq2G7x-F8gQeNSxIxY;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$-qxDAAo5wjq2G7x-F8gQeNSxIxY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/net/IpPrefix;

    invoke-static {p1}, Landroid/net/ip/IpClient$InitialConfiguration;->lambda$-qxDAAo5wjq2G7x-F8gQeNSxIxY(Landroid/net/IpPrefix;)Z

    move-result p1

    return p1
.end method
