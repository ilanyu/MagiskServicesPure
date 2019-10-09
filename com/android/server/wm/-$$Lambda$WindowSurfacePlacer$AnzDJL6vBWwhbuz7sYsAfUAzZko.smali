.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(ILandroid/util/ArraySet;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;->f$0:I

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;->f$1:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;->f$0:I

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;->f$1:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/WindowSurfacePlacer;->lambda$findAnimLayoutParamsToken$1(ILandroid/util/ArraySet;Lcom/android/server/wm/AppWindowToken;)Z

    move-result p1

    return p1
.end method
