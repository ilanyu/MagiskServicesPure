.class Lcom/android/server/search/Searchables$1;
.super Ljava/lang/Object;
.source "Searchables.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/Searchables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 7
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 357
    if-ne p1, p2, :cond_4

    .line 358
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_4
    # invokes: Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    invoke-static {p1}, Lcom/android/server/search/Searchables;->access$000(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    .line 361
    .local v0, "lhsSystem":Z
    # invokes: Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    invoke-static {p2}, Lcom/android/server/search/Searchables;->access$000(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    .line 363
    .local v1, "rhsSystem":Z
    if-eqz v0, :cond_12

    if-nez v1, :cond_12

    .line 364
    const/4 v2, -0x1

    return v2

    .line 365
    :cond_12
    if-eqz v1, :cond_18

    if-nez v0, :cond_18

    .line 366
    const/4 v2, 0x1

    return v2

    .line 373
    :cond_18
    iget v2, p2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 354
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/search/Searchables$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1
.end method
