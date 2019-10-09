.class Lcom/android/server/am/MiuiWarnings$NoPreloadHolder;
.super Ljava/lang/Object;
.source "MiuiWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/MiuiWarnings;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/android/server/am/MiuiWarnings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/MiuiWarnings;-><init>(Lcom/android/server/am/MiuiWarnings$1;)V

    sput-object v0, Lcom/android/server/am/MiuiWarnings$NoPreloadHolder;->INSTANCE:Lcom/android/server/am/MiuiWarnings;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/MiuiWarnings;
    .registers 1

    .line 11
    sget-object v0, Lcom/android/server/am/MiuiWarnings$NoPreloadHolder;->INSTANCE:Lcom/android/server/am/MiuiWarnings;

    return-object v0
.end method
