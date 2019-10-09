.class Lcom/android/server/pm/ShortcutService$DumpFilter;
.super Ljava/lang/Object;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DumpFilter"
.end annotation


# instance fields
.field private mCheckInClear:Z

.field private mDumpCheckIn:Z

.field private mDumpDetails:Z

.field private mDumpFiles:Z

.field private mDumpMain:Z

.field private mDumpUid:Z

.field private mPackagePatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 3741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 3743
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 3745
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 3746
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 3747
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 3749
    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 3750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    .line 3751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3758
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackageRegex(Ljava/lang/String;)V

    .line 3759
    return-void
.end method

.method addPackageRegex(Ljava/lang/String;)V
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .line 3754
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3755
    return-void
.end method

.method addUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3762
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3763
    return-void
.end method

.method isPackageMatch(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3766
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 3767
    return v1

    .line 3769
    :cond_a
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 3770
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 3771
    return v1

    .line 3769
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3774
    .end local v2    # "i":I
    :cond_2a
    return v0
.end method

.method isUserMatch(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 3778
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 3779
    return v1

    .line 3781
    :cond_a
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 3782
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_23

    .line 3783
    return v1

    .line 3781
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3786
    .end local v2    # "i":I
    :cond_26
    return v0
.end method

.method public setCheckInClear(Z)V
    .registers 2
    .param p1, "checkInClear"    # Z

    .line 3802
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 3803
    return-void
.end method

.method public setDumpCheckIn(Z)V
    .registers 2
    .param p1, "dumpCheckIn"    # Z

    .line 3794
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 3795
    return-void
.end method

.method public setDumpDetails(Z)V
    .registers 2
    .param p1, "dumpDetails"    # Z

    .line 3834
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 3835
    return-void
.end method

.method public setDumpFiles(Z)V
    .registers 2
    .param p1, "dumpFiles"    # Z

    .line 3826
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 3827
    return-void
.end method

.method public setDumpMain(Z)V
    .registers 2
    .param p1, "dumpMain"    # Z

    .line 3810
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 3811
    return-void
.end method

.method public setDumpUid(Z)V
    .registers 2
    .param p1, "dumpUid"    # Z

    .line 3818
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 3819
    return-void
.end method

.method public shouldCheckInClear()Z
    .registers 2

    .line 3798
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    return v0
.end method

.method public shouldDumpCheckIn()Z
    .registers 2

    .line 3790
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    return v0
.end method

.method public shouldDumpDetails()Z
    .registers 2

    .line 3830
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    return v0
.end method

.method public shouldDumpFiles()Z
    .registers 2

    .line 3822
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    return v0
.end method

.method public shouldDumpMain()Z
    .registers 2

    .line 3806
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    return v0
.end method

.method public shouldDumpUid()Z
    .registers 2

    .line 3814
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    return v0
.end method
