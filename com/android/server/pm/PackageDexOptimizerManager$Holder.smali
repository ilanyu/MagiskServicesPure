.class final Lcom/android/server/pm/PackageDexOptimizerManager$Holder;
.super Ljava/lang/Object;
.source "PackageDexOptimizerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageDexOptimizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/android/server/pm/PackageDexOptimizerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 80
    new-instance v0, Lcom/android/server/pm/PackageDexOptimizerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageDexOptimizerManager;-><init>(Lcom/android/server/pm/PackageDexOptimizerManager$1;)V

    sput-object v0, Lcom/android/server/pm/PackageDexOptimizerManager$Holder;->INSTANCE:Lcom/android/server/pm/PackageDexOptimizerManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
