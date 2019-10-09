.class Lcom/android/server/AlarmManagerServiceInjector$2;
.super Ljava/util/ArrayList;
.source "AlarmManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    const-string v0, "com.android.deskclock"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceInjector$2;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
