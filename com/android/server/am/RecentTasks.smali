.class Lcom/android/server/am/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RecentTasks$Callbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x5

.field private static final MOVE_AFFILIATED_TASKS_TO_FRONT:Z = false

.field private static final NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

.field private static final NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TASK_ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIMMED:Z = true


# instance fields
.field private mActiveTasksSessionDurationMs:J

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RecentTasks$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalMaxNumTasks:I

.field private mHasVisibleRecentTasks:Z

.field private mMaxNumVisibleTasks:I

.field private mMinNumVisibleTasks:I

.field private final mPersistedTaskIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsComponent:Landroid/content/ComponentName;

.field private mRecentsUid:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTaskPersister:Lcom/android/server/am/TaskPersister;

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

.field private final mUserController:Lcom/android/server/am/UserController;

.field private final mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 113
    sget-object v0, Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;->INSTANCE:Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;

    sput-object v0, Lcom/android/server/am/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    .line 118
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 119
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 153
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 178
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 179
    new-instance v0, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-direct {v0}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    .line 192
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    .line 193
    .local v0, "systemDir":Ljava/io/File;
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 194
    .local v1, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 195
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    .line 196
    new-instance v2, Lcom/android/server/am/TaskPersister;

    invoke-direct {v2, v0, p2, p1, p0}, Lcom/android/server/am/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    .line 197
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 198
    const v2, 0x112007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    .line 200
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskPersister;Lcom/android/server/am/UserController;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskPersister"    # Lcom/android/server/am/TaskPersister;
    .param p3, "userController"    # Lcom/android/server/am/UserController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 153
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 178
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 179
    new-instance v0, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-direct {v0}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    .line 184
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 185
    iput-object p3, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    .line 186
    iput-object p2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    .line 187
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 189
    return-void
.end method

.method private canAddTaskWithoutTrim(Lcom/android/server/am/TaskRecord;)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 683
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I
    .registers 20
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    .line 1267
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1268
    .local v2, "recentsCount":I
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1269
    .local v3, "intent":Landroid/content/Intent;
    const/4 v5, 0x1

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, v5

    goto :goto_18

    :cond_17
    const/4 v6, 0x0

    .line 1270
    .local v6, "document":Z
    :goto_18
    iget v7, v1, Lcom/android/server/am/TaskRecord;->maxRecents:I

    sub-int/2addr v7, v5

    .line 1271
    .local v7, "maxRecents":I
    move v8, v7

    const/4 v7, 0x0

    .local v7, "i":I
    .local v8, "maxRecents":I
    :goto_1d
    if-ge v7, v2, :cond_bb

    .line 1272
    iget-object v9, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 1273
    .local v9, "tr":Lcom/android/server/am/TaskRecord;
    if-eq v1, v9, :cond_ba

    .line 1276
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eqz v10, :cond_3b

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eqz v10, :cond_3b

    .line 1277
    invoke-direct {v0, v1, v9}, Lcom/android/server/am/RecentTasks;->hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z

    move-result v10

    if-eqz v10, :cond_b5

    :cond_3b
    iget v10, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iget v11, v9, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v10, v11, :cond_43

    .line 1280
    goto/16 :goto_b5

    .line 1282
    :cond_43
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1283
    .local v10, "trIntent":Landroid/content/Intent;
    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v11, :cond_55

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 1284
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_55

    move v11, v5

    goto :goto_56

    :cond_55
    const/4 v11, 0x0

    .line 1285
    .local v11, "sameAffinity":Z
    :goto_56
    if-eqz v3, :cond_60

    invoke-virtual {v3, v10}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_60

    move v12, v5

    goto :goto_61

    :cond_60
    const/4 v12, 0x0

    .line 1286
    .local v12, "sameIntent":Z
    :goto_61
    const/4 v13, 0x0

    .line 1287
    .local v13, "multiTasksAllowed":Z
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v14

    .line 1288
    .local v14, "flags":I
    const/high16 v15, 0x10080000

    and-int/2addr v15, v14

    if-eqz v15, :cond_71

    const/high16 v15, 0x8000000

    and-int/2addr v15, v14

    if-eqz v15, :cond_71

    .line 1290
    const/4 v13, 0x1

    .line 1292
    :cond_71
    if-eqz v10, :cond_7b

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_7b

    move v15, v5

    goto :goto_7c

    :cond_7b
    const/4 v15, 0x0

    .line 1293
    .local v15, "trIsDocument":Z
    :goto_7c
    if-eqz v6, :cond_83

    if-eqz v15, :cond_83

    move/from16 v16, v5

    goto :goto_85

    :cond_83
    const/16 v16, 0x0

    .line 1294
    .local v16, "bothDocuments":Z
    :goto_85
    if-nez v11, :cond_8c

    if-nez v12, :cond_8c

    if-nez v16, :cond_8c

    .line 1295
    goto :goto_b5

    .line 1298
    :cond_8c
    if-eqz v16, :cond_b0

    .line 1300
    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_a2

    iget-object v4, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_a2

    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1302
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    const/4 v4, 0x1

    goto :goto_a3

    :cond_a2
    const/4 v4, 0x0

    .line 1303
    .local v4, "sameActivity":Z
    :goto_a3
    if-nez v4, :cond_a6

    .line 1306
    goto :goto_b5

    .line 1307
    :cond_a6
    if-lez v8, :cond_af

    .line 1308
    add-int/lit8 v8, v8, -0x1

    .line 1309
    if-eqz v12, :cond_b5

    if-eqz v13, :cond_af

    .line 1313
    goto :goto_b5

    .line 1318
    .end local v4    # "sameActivity":Z
    :cond_af
    goto :goto_ba

    :cond_b0
    if-nez v6, :cond_b5

    if-eqz v15, :cond_ba

    .line 1320
    nop

    .line 1271
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v10    # "trIntent":Landroid/content/Intent;
    .end local v11    # "sameAffinity":Z
    .end local v12    # "sameIntent":Z
    .end local v13    # "multiTasksAllowed":Z
    .end local v14    # "flags":I
    .end local v15    # "trIsDocument":Z
    .end local v16    # "bothDocuments":Z
    :cond_b5
    :goto_b5
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto/16 :goto_1d

    .line 1323
    .restart local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_ba
    :goto_ba
    return v7

    .line 1325
    .end local v7    # "i":I
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_bb
    const/4 v4, -0x1

    return v4
.end method

.method private hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z
    .registers 16
    .param p1, "t1"    # Lcom/android/server/am/TaskRecord;
    .param p2, "t2"    # Lcom/android/server/am/TaskRecord;

    .line 1578
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    .line 1579
    .local v0, "activityType":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    .line 1580
    .local v1, "windowingMode":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_e

    move v4, v3

    goto :goto_f

    :cond_e
    move v4, v2

    .line 1581
    .local v4, "isUndefinedType":Z
    :goto_f
    if-nez v1, :cond_13

    move v5, v3

    goto :goto_14

    :cond_13
    move v5, v2

    .line 1582
    .local v5, "isUndefinedMode":Z
    :goto_14
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v6

    .line 1583
    .local v6, "otherActivityType":I
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v7

    .line 1584
    .local v7, "otherWindowingMode":I
    if-nez v6, :cond_20

    move v8, v3

    goto :goto_21

    :cond_20
    move v8, v2

    .line 1585
    .local v8, "isOtherUndefinedType":Z
    :goto_21
    if-nez v7, :cond_25

    move v9, v3

    goto :goto_26

    :cond_25
    move v9, v2

    .line 1589
    .local v9, "isOtherUndefinedMode":Z
    :goto_26
    if-eq v0, v6, :cond_2f

    if-nez v4, :cond_2f

    if-eqz v8, :cond_2d

    goto :goto_2f

    :cond_2d
    move v10, v2

    goto :goto_30

    :cond_2f
    :goto_2f
    move v10, v3

    .line 1591
    .local v10, "isCompatibleType":Z
    :goto_30
    if-eq v1, v7, :cond_39

    if-nez v5, :cond_39

    if-eqz v9, :cond_37

    goto :goto_39

    :cond_37
    move v11, v2

    goto :goto_3a

    :cond_39
    :goto_39
    move v11, v3

    .line 1599
    .local v11, "isCompatibleMode":Z
    :goto_3a
    if-eqz v11, :cond_3e

    :goto_3c
    move v12, v3

    goto :goto_46

    :cond_3e
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_45

    goto :goto_3c

    :cond_45
    move v12, v2

    .line 1600
    .local v12, "isCompatibleModeWithRunningActivity":Z
    :goto_46
    if-eqz v10, :cond_4c

    if-eqz v12, :cond_4c

    move v2, v3

    nop

    :cond_4c
    return v2
.end method

.method private isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "quietProfileUserIds"    # Landroid/util/SparseBooleanArray;

    .line 1106
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1109
    return v1

    .line 1112
    :cond_a
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_24

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, v2, :cond_24

    .line 1114
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1115
    .local v0, "affiliatedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_24

    .line 1116
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/RecentTasks;->isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1119
    return v1

    .line 1125
    .end local v0    # "affiliatedTask":Lcom/android/server/am/TaskRecord;
    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method private isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "numVisibleTasks"    # I

    .line 1181
    nop

    .line 1182
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_12

    move v0, v3

    goto :goto_13

    :cond_12
    move v0, v2

    .line 1184
    .local v0, "isExcludeFromRecents":Z
    :goto_13
    if-eqz v0, :cond_1a

    .line 1186
    if-ne p2, v3, :cond_19

    move v2, v3

    nop

    :cond_19
    return v2

    .line 1190
    :cond_1a
    invoke-static {p1}, Lcom/android/server/am/RecentTasksInjector;->shouldSkipTrimTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1191
    return v3

    .line 1195
    :cond_21
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    if-ltz v1, :cond_2a

    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    if-gt p2, v1, :cond_2a

    .line 1198
    return v3

    .line 1201
    :cond_2a
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    if-ltz v1, :cond_35

    .line 1203
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    if-gt p2, v1, :cond_34

    move v2, v3

    nop

    :cond_34
    return v2

    .line 1206
    :cond_35
    iget-wide v4, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_48

    .line 1209
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_48

    .line 1210
    return v3

    .line 1214
    :cond_48
    return v2
.end method

.method private isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1140
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_3e

    goto :goto_18

    .line 1148
    :pswitch_9
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_18

    .line 1151
    return v1

    .line 1144
    :pswitch_17
    return v1

    .line 1156
    :cond_18
    :goto_18
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    goto :goto_2e

    .line 1161
    :pswitch_20
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1162
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-ne v2, p1, :cond_2e

    .line 1164
    return v1

    .line 1158
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :pswitch_2d
    return v1

    .line 1169
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/LockTaskController;->getRootTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne p1, v0, :cond_3b

    .line 1170
    return v1

    .line 1173
    :cond_3b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_17
        :pswitch_17
        :pswitch_9
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_20
    .end packed-switch
.end method

.method static synthetic lambda$static$0(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .registers 4
    .param p0, "lhs"    # Lcom/android/server/am/TaskRecord;
    .param p1, "rhs"    # Lcom/android/server/am/TaskRecord;

    .line 114
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private loadPersistedTaskIdsForUserLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 365
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    .line 366
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded persisted task ids for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_29
    return-void
.end method

.method private moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .registers 15
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskIndex"    # I

    .line 1402
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1403
    .local v0, "recentsCount":I
    move-object v1, p1

    .line 1404
    .local v1, "top":Lcom/android/server/am/TaskRecord;
    move-object v2, v1

    move v1, p2

    .line 1405
    .local v1, "topIndex":I
    .local v2, "top":Lcom/android/server/am/TaskRecord;
    :goto_9
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_14

    if-lez v1, :cond_14

    .line 1406
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 1407
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1412
    :cond_14
    iget v3, v2, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1e

    move v3, v6

    goto :goto_1f

    :cond_1e
    move v3, v5

    .line 1413
    .local v3, "sane":Z
    :goto_1f
    move v4, v1

    .line 1414
    .local v4, "endIndex":I
    move v7, v4

    move-object v4, v2

    .line 1415
    .local v4, "prev":Lcom/android/server/am/TaskRecord;
    .local v7, "endIndex":I
    :goto_22
    if-ge v7, v0, :cond_175

    .line 1416
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1419
    .local v8, "cur":Lcom/android/server/am/TaskRecord;
    const/4 v9, -0x1

    if-ne v8, v2, :cond_58

    .line 1421
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_37

    iget v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v10, v9, :cond_64

    .line 1422
    :cond_37
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": first task has next affiliate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const/4 v3, 0x0

    .line 1425
    goto/16 :goto_175

    .line 1429
    :cond_58
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v10, v4, :cond_131

    iget v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iget v11, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v10, v11, :cond_64

    goto/16 :goto_131

    .line 1440
    :cond_64
    iget v10, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-ne v10, v9, :cond_97

    .line 1442
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_175

    .line 1443
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": last task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has previous affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/4 v3, 0x0

    goto/16 :goto_175

    .line 1452
    :cond_97
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_d0

    .line 1453
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has previous affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " but should be id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const/4 v3, 0x0

    .line 1458
    goto/16 :goto_175

    .line 1461
    :cond_d0
    iget v9, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v10, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v9, v10, :cond_10a

    .line 1462
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has affiliated id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " but should be "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const/4 v3, 0x0

    .line 1467
    goto :goto_175

    .line 1469
    :cond_10a
    move-object v4, v8

    .line 1470
    add-int/lit8 v7, v7, 0x1

    .line 1471
    if-lt v7, v0, :cond_12f

    .line 1472
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain ran off index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": last task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/4 v3, 0x0

    .line 1475
    goto :goto_175

    .line 1477
    .end local v8    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_12f
    goto/16 :goto_22

    .line 1431
    .restart local v8    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_131
    :goto_131
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": middle task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has bad next affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    const/4 v3, 0x0

    .line 1437
    nop

    .line 1478
    .end local v8    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_175
    :goto_175
    if-eqz v3, :cond_1a0

    .line 1479
    if-ge v7, p2, :cond_1a0

    .line 1480
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": did not extend to task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    const/4 v3, 0x0

    .line 1485
    :cond_1a0
    if-eqz v3, :cond_1b8

    .line 1488
    move v5, v1

    .local v5, "i":I
    :goto_1a3
    if-gt v5, v7, :cond_1b7

    .line 1491
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1492
    .restart local v8    # "cur":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    sub-int v10, v5, v1

    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1488
    .end local v8    # "cur":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a3

    .line 1496
    .end local v5    # "i":I
    :cond_1b7
    return v6

    .line 1500
    :cond_1b8
    return v5
.end method

.method private notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 318
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RecentTasks$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/server/am/RecentTasks$Callbacks;->onRecentTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "wasTrimmed"    # Z

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 324
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RecentTasks$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/server/am/RecentTasks$Callbacks;->onRecentTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private processNextAffiliateChainLocked(I)I
    .registers 15
    .param p1, "start"    # I

    .line 1330
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 1331
    .local v0, "startTask":Lcom/android/server/am/TaskRecord;
    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 1334
    .local v1, "affiliateId":I
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_1c

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_1c

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_1c

    .line 1339
    iput-boolean v3, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1340
    add-int/lit8 v2, p1, 0x1

    return v2

    .line 1344
    :cond_1c
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1345
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_28
    if-lt v2, p1, :cond_43

    .line 1346
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1347
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v4, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v5, v1, :cond_40

    .line 1348
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1349
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 1355
    .end local v2    # "i":I
    :cond_43
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/am/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1359
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1360
    .local v2, "first":Lcom/android/server/am/TaskRecord;
    iput-boolean v3, v2, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1361
    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    if-eqz v5, :cond_78

    .line 1362
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Link error 1 first.next="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-virtual {v2, v6}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1364
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1367
    :cond_78
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1368
    .local v5, "tmpSize":I
    move v7, v4

    .local v7, "i":I
    :goto_7f
    add-int/lit8 v8, v5, -0x1

    if-ge v7, v8, :cond_fe

    .line 1369
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1370
    .local v8, "next":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 1371
    .local v9, "prev":Lcom/android/server/am/TaskRecord;
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v10, v9, :cond_c7

    .line 1372
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 2 next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1375
    invoke-virtual {p0, v8, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1377
    :cond_c7
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v10, v8, :cond_f9

    .line 1378
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 3 prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-virtual {v9, v8}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1381
    invoke-virtual {p0, v9, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1383
    :cond_f9
    iput-boolean v3, v9, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1368
    .end local v8    # "next":Lcom/android/server/am/TaskRecord;
    .end local v9    # "prev":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f

    .line 1386
    .end local v7    # "i":I
    :cond_fe
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 1387
    .local v3, "last":Lcom/android/server/am/TaskRecord;
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_12a

    .line 1388
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 4 last.prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-virtual {v3, v6}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1390
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1394
    :cond_12a
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1395
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1398
    add-int v4, p1, v5

    return v4
.end method

.method private removeForAddTask(Lcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1244
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I

    move-result v0

    .line 1245
    .local v0, "removeIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1247
    return-void

    .line 1253
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1254
    .local v1, "removedTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    if-eq v1, p1, :cond_16

    .line 1255
    invoke-direct {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1259
    :cond_16
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1260
    return-void
.end method

.method private removeTasksForUserLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 489
    if-gtz p1, :cond_19

    .line 490
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t remove recent task on user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void

    .line 494
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_3d

    .line 495
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 496
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p1, :cond_3a

    .line 499
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 494
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 502
    .end local v0    # "i":I
    :cond_3d
    return-void
.end method

.method private static shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;

    .line 425
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 426
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v1, :cond_12

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private syncPersistentTaskIdsLocked()V
    .registers 7

    .line 401
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 402
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 403
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 406
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 401
    .end local v2    # "userId":I
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 409
    .end local v0    # "i":I
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_2d
    if-ltz v0, :cond_8f

    .line 410
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 411
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v2}, Lcom/android/server/am/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 414
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7d

    .line 415
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No task ids found for userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mPersistedTaskIds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    :cond_7d
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 409
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 422
    .end local v0    # "i":I
    :cond_8f
    return-void
.end method

.method private trimInactiveRecentTasks()V
    .registers 10

    .line 1027
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1030
    .local v0, "recentsCount":I
    :goto_6
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_2b

    .line 1033
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1034
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    invoke-static {v1}, Lcom/android/server/am/RecentTasksInjector;->shouldSkipTrimTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1035
    add-int/lit8 v0, v0, -0x1

    .line 1036
    goto :goto_6

    .line 1038
    :cond_1e
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1040
    invoke-direct {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1041
    add-int/lit8 v0, v0, -0x1

    .line 1044
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    goto :goto_6

    .line 1047
    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v1

    .line 1048
    .local v1, "profileUserIds":[I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1049
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_39
    if-ge v5, v3, :cond_59

    aget v6, v1, v5

    .line 1050
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v7, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 1051
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_56

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_56

    .line 1052
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1049
    .end local v6    # "userId":I
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 1059
    :cond_59
    const/4 v3, 0x0

    .line 1060
    .local v3, "numVisibleTasks":I
    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "numVisibleTasks":I
    :goto_5c
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_a1

    .line 1061
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 1063
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/RecentTasks;->isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 1064
    iget-boolean v7, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    if-nez v7, :cond_7b

    .line 1066
    add-int/lit8 v3, v3, 0x1

    .line 1067
    goto :goto_5c

    .line 1070
    :cond_7b
    invoke-direct {p0, v6}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v7

    if-nez v7, :cond_84

    .line 1072
    add-int/lit8 v3, v3, 0x1

    .line 1073
    goto :goto_5c

    .line 1075
    :cond_84
    add-int/lit8 v5, v5, 0x1

    .line 1076
    invoke-direct {p0, v6, v5}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v7

    if-nez v7, :cond_92

    invoke-virtual {p0, v6}, Lcom/android/server/am/RecentTasks;->isTrimmable(Lcom/android/server/am/TaskRecord;)Z

    move-result v7

    if-nez v7, :cond_95

    .line 1078
    :cond_92
    add-int/lit8 v3, v3, 0x1

    .line 1079
    goto :goto_5c

    .line 1093
    :cond_95
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1094
    invoke-direct {p0, v6, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1095
    invoke-virtual {p0, v6, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1096
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_5c

    .line 1097
    .end local v3    # "i":I
    :cond_a1
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/am/TaskRecord;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 876
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v0, v1, :cond_12

    goto :goto_14

    :cond_12
    move v0, v3

    goto :goto_15

    :cond_14
    :goto_14
    move v0, v2

    .line 880
    .local v0, "isAffiliated":Z
    :goto_15
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 884
    .local v1, "recentsCount":I
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_20

    .line 887
    return-void

    .line 890
    :cond_20
    if-nez v0, :cond_2d

    if-lez v1, :cond_2d

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2d

    .line 892
    return-void

    .line 896
    :cond_2d
    if-eqz v0, :cond_44

    if-lez v1, :cond_44

    iget-boolean v4, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v4, :cond_44

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 897
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v4, v5, :cond_44

    .line 900
    return-void

    .line 903
    :cond_44
    const/4 v4, 0x0

    .line 907
    .local v4, "needAffiliationFix":Z
    iget-boolean v5, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v5, :cond_77

    .line 908
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 909
    .local v5, "taskIndex":I
    if-ltz v5, :cond_60

    .line 910
    nop

    .line 912
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 913
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 914
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 917
    return-void

    .line 930
    :cond_60
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task with inRecent not in recents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v4, 0x1

    .line 936
    .end local v5    # "taskIndex":I
    :cond_77
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->removeForAddTask(Lcom/android/server/am/TaskRecord;)V

    .line 938
    iput-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 939
    if-eqz v0, :cond_b1

    if-eqz v4, :cond_81

    goto :goto_b1

    .line 945
    :cond_81
    if-eqz v0, :cond_b9

    .line 948
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 949
    .local v2, "other":Lcom/android/server/am/TaskRecord;
    if-nez v2, :cond_89

    .line 950
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 952
    :cond_89
    if-eqz v2, :cond_af

    .line 953
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 954
    .local v3, "otherIndex":I
    if-ltz v3, :cond_ac

    .line 957
    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_9a

    .line 960
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "taskIndex":I
    goto :goto_9b

    .line 964
    .end local v5    # "taskIndex":I
    :cond_9a
    move v5, v3

    .line 968
    .restart local v5    # "taskIndex":I
    :goto_9b
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 969
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 972
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 974
    return-void

    .line 979
    :cond_aa
    const/4 v4, 0x1

    .line 980
    .end local v5    # "taskIndex":I
    goto :goto_ae

    .line 983
    :cond_ac
    const/4 v3, 0x1

    .line 985
    .end local v4    # "needAffiliationFix":Z
    .local v3, "needAffiliationFix":Z
    move v4, v3

    .end local v3    # "needAffiliationFix":Z
    .restart local v4    # "needAffiliationFix":Z
    :goto_ae
    goto :goto_b9

    .line 988
    :cond_af
    const/4 v4, 0x1

    .end local v2    # "other":Lcom/android/server/am/TaskRecord;
    goto :goto_b9

    .line 942
    :cond_b1
    :goto_b1
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 943
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 992
    :cond_b9
    :goto_b9
    if-eqz v4, :cond_c0

    .line 994
    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    .line 998
    :cond_c0
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->trimInactiveRecentTasks()V

    .line 999
    return-void
.end method

.method addToBottom(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1005
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->canAddTaskWithoutTrim(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1008
    const/4 v0, 0x0

    return v0

    .line 1011
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 1012
    const/4 v0, 0x1

    return v0
.end method

.method cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 549
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_52

    .line 550
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 551
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    const/4 v3, -0x1

    if-eq p3, v3, :cond_1a

    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, p3, :cond_1a

    .line 552
    goto :goto_4f

    .line 555
    :cond_1a
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_25

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 556
    .local v3, "cn":Landroid/content/ComponentName;
    :goto_26
    const/4 v4, 0x0

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    if-eqz p2, :cond_3f

    .line 557
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    :cond_3f
    move v5, v1

    goto :goto_42

    :cond_41
    move v5, v4

    .line 558
    .local v5, "sameComponent":Z
    :goto_42
    if-eqz v5, :cond_4f

    .line 559
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string v8, "disabled-package"

    invoke-virtual {v6, v7, v4, v1, v8}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 549
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "sameComponent":Z
    :cond_4f
    :goto_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 563
    .end local v0    # "i":I
    :cond_52
    return-void
.end method

.method cleanupLocked(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 571
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 572
    .local v0, "recentsCount":I
    if-nez v0, :cond_9

    .line 575
    return-void

    .line 579
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 580
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 582
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 583
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_ff

    .line 584
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 585
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    const/4 v4, -0x1

    if-eq p1, v4, :cond_2c

    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, p1, :cond_2c

    .line 587
    goto/16 :goto_fb

    .line 589
    :cond_2c
    iget-boolean v4, v3, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_57

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_57

    .line 591
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 592
    invoke-direct {p0, v3, v5}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 593
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing auto-remove without activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    goto/16 :goto_fb

    .line 597
    :cond_57
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_fb

    .line 598
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    .line 599
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_81

    .line 604
    :try_start_67
    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const v7, 0x10000400

    invoke-interface {v1, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_70} :catch_7e

    move-object v4, v6

    .line 610
    nop

    .line 611
    if-nez v4, :cond_76

    .line 612
    sget-object v4, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 614
    :cond_76
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 607
    :catch_7e
    move-exception v5

    .line 609
    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_fb

    .line 616
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_81
    :goto_81
    sget-object v6, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    const/high16 v7, 0x800000

    if-ne v4, v6, :cond_e3

    .line 620
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 621
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 622
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_b7

    .line 624
    :try_start_97
    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-interface {v1, v8, v9, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_a3} :catch_b5

    move-object v6, v8

    .line 629
    nop

    .line 630
    if-nez v6, :cond_a9

    .line 631
    sget-object v6, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 633
    :cond_a9
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b7

    .line 626
    :catch_b5
    move-exception v5

    .line 628
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto :goto_fb

    .line 635
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_b7
    :goto_b7
    sget-object v8, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    if-eq v6, v8, :cond_c4

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-nez v7, :cond_c1

    goto :goto_c4

    .line 646
    :cond_c1
    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 648
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    goto :goto_fb

    .line 638
    .restart local v6    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_c4
    :goto_c4
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 639
    invoke-direct {p0, v3, v5}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 640
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing no longer valid recent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    goto :goto_fb

    .line 649
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_e3
    iget-boolean v6, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_f9

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_f9

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v7

    if-nez v6, :cond_f5

    goto :goto_f9

    .line 663
    :cond_f5
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_fb

    .line 659
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_f9
    :goto_f9
    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 583
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_fb
    :goto_fb
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_19

    .line 670
    .end local v2    # "i":I
    :cond_ff
    const/4 v2, 0x0

    .line 671
    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 672
    :goto_106
    if-ge v2, v0, :cond_10d

    .line 673
    invoke-direct {p0, v2}, Lcom/android/server/am/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v2

    goto :goto_106

    .line 676
    :cond_10d
    return-void
.end method

.method containsTaskId(II)Z
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 375
    invoke-direct {p0, p2}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 376
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 5
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .line 1543
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 1544
    .local v0, "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 v1, -0x1

    goto :goto_f

    :cond_d
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_f
    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 1545
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 1546
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1547
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 1548
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 1549
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    .line 1550
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    .line 1551
    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 1552
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1553
    iget-wide v1, p1, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    .line 1554
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    .line 1555
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    .line 1556
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 1557
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 1558
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    .line 1560
    :cond_5f
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    iput-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 1561
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    .line 1562
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1564
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->getNumRunningActivities(Lcom/android/server/am/TaskRecord$TaskActivitiesReport;)V

    .line 1565
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 1566
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_90

    :cond_8f
    move-object v1, v2

    :goto_90
    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1567
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    nop

    :cond_a3
    iput-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1569
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 1504
    const-string v0, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRecentsUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRecentsComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1508
    return-void

    .line 1511
    :cond_3c
    const/4 v0, 0x0

    .line 1512
    .local v0, "printedAnything":Z
    const/4 v1, 0x0

    .line 1513
    .local v1, "printedHeader":Z
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1514
    .local v2, "size":I
    const/4 v3, 0x0

    .line 1514
    .local v3, "i":I
    :goto_45
    if-ge v3, v2, :cond_85

    .line 1515
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1516
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz p3, :cond_62

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_82

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1517
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 1518
    goto :goto_82

    .line 1521
    :cond_62
    if-nez v1, :cond_6b

    .line 1522
    const-string v5, "  Recent tasks:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    const/4 v1, 0x1

    .line 1524
    const/4 v0, 0x1

    .line 1526
    :cond_6b
    const-string v5, "  * Recent #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1528
    if-eqz p2, :cond_82

    .line 1529
    const-string v5, "    "

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1514
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_82
    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 1533
    .end local v3    # "i":I
    :cond_85
    if-nez v0, :cond_8c

    .line 1534
    const-string v3, "  (nothing)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    :cond_8c
    return-void
.end method

.method flush()V
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 445
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 446
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 447
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->flush()V

    .line 448
    return-void

    .line 446
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 692
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_47

    .line 693
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 697
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-eq v4, p1, :cond_1b

    .line 698
    goto :goto_44

    .line 700
    :cond_1b
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    .line 701
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 702
    goto :goto_44

    .line 704
    :cond_30
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    .line 705
    .local v5, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v6, Lcom/android/server/am/AppTaskImpl;

    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-direct {v6, v7, v8, p1}, Lcom/android/server/am/AppTaskImpl;-><init>(Lcom/android/server/am/ActivityManagerService;II)V

    .line 706
    .local v6, "taskImpl":Lcom/android/server/am/AppTaskImpl;
    invoke-virtual {v6}, Lcom/android/server/am/AppTaskImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v6    # "taskImpl":Lcom/android/server/am/AppTaskImpl;
    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 708
    .end local v2    # "i":I
    :cond_47
    return-object v0
.end method

.method getPersistableTaskIds(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 815
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 816
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_31

    .line 817
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 820
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 821
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v4, :cond_1d

    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v4, :cond_2e

    :cond_1d
    if-eqz v3, :cond_25

    .line 822
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 824
    :cond_25
    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 816
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 830
    .end local v1    # "i":I
    :cond_31
    return-void
.end method

.method getRawTasks()Ljava/util/ArrayList;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRecentTaskIds()Landroid/util/SparseBooleanArray;
    .registers 8

    .line 841
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 842
    .local v0, "res":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 843
    .local v1, "size":I
    const/4 v2, 0x0

    .line 844
    .local v2, "numVisibleTasks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_2e

    .line 845
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 846
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, v4}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 847
    add-int/lit8 v2, v2, 0x1

    .line 848
    invoke-direct {p0, v4, v2}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 849
    iget v5, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 844
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 853
    .end local v3    # "i":I
    :cond_2e
    return-object v0
.end method

.method getRecentTasks(IIZZII)Landroid/content/pm/ParceledListSlice;
    .registers 23
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "getTasksAllowed"    # Z
    .param p4, "getDetailedTasks"    # Z
    .param p5, "userId"    # I
    .param p6, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 716
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    move v2, v3

    .line 718
    .local v2, "withExcluded":Z
    :goto_c
    iget-object v4, v0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x4

    invoke-virtual {v4, v1, v5}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v4

    if-nez v4, :cond_36

    .line 719
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is still locked. Cannot load recents"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    return-object v3

    .line 722
    :cond_36
    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->loadUserRecentsLocked(I)V

    .line 724
    iget-object v4, v0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4, v1}, Lcom/android/server/am/UserController;->getProfileIds(I)Ljava/util/Set;

    move-result-object v4

    .line 725
    .local v4, "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 727
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v5, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v6, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 729
    .local v6, "size":I
    const/4 v7, 0x0

    .line 730
    .local v7, "numVisibleTasks":I
    nop

    .line 730
    .local v3, "i":I
    :goto_53
    if-ge v3, v6, :cond_e1

    .line 731
    iget-object v8, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 733
    .local v8, "tr":Lcom/android/server/am/TaskRecord;
    invoke-direct {v0, v8}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 734
    add-int/lit8 v7, v7, 0x1

    .line 735
    invoke-direct {v0, v8, v7}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 747
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    move/from16 v10, p1

    if-lt v9, v10, :cond_75

    .line 748
    goto/16 :goto_d9

    .line 752
    :cond_75
    iget v9, v8, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_82

    .line 754
    goto :goto_d9

    .line 757
    :cond_82
    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eqz v9, :cond_87

    .line 759
    goto :goto_d9

    .line 768
    :cond_87
    if-eqz v3, :cond_9a

    if-nez v2, :cond_9a

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v9, :cond_9a

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 771
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v11, 0x800000

    and-int/2addr v9, v11

    if-nez v9, :cond_d9

    .line 773
    :cond_9a
    if-nez p3, :cond_a9

    .line 776
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v11

    if-nez v11, :cond_a9

    iget v11, v8, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    move/from16 v12, p6

    if-eq v11, v12, :cond_ab

    .line 778
    goto :goto_db

    .line 781
    :cond_a9
    move/from16 v12, p6

    :cond_ab
    iget-boolean v11, v8, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v11, :cond_b6

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-nez v11, :cond_b6

    .line 785
    goto :goto_db

    .line 787
    :cond_b6
    and-int/lit8 v11, p2, 0x2

    if-eqz v11, :cond_bf

    iget-boolean v11, v8, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v11, :cond_bf

    .line 790
    goto :goto_db

    .line 793
    :cond_bf
    iget-boolean v11, v8, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    if-nez v11, :cond_c4

    .line 797
    goto :goto_db

    .line 800
    :cond_c4
    invoke-virtual {v0, v8}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v11

    .line 801
    .local v11, "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez p4, :cond_d3

    .line 802
    iget-object v13, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v14, 0x0

    move-object v0, v14

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v13, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 805
    :cond_d3
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    .end local v8    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v11    # "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    goto :goto_db

    .line 730
    :cond_d7
    move/from16 v10, p1

    :cond_d9
    :goto_d9
    move/from16 v12, p6

    :goto_db
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_53

    .line 808
    .end local v3    # "i":I
    :cond_e1
    move/from16 v10, p1

    move/from16 v12, p6

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method getRecentsComponent()Landroid/content/ComponentName;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method getRecentsComponentUid()I
    .registers 2

    .line 305
    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    return v0
.end method

.method getTask(I)Lcom/android/server/am/TaskRecord;
    .registers 6
    .param p1, "id"    # I

    .line 860
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 861
    .local v0, "recentsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 862
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 863
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_16

    .line 864
    return-object v2

    .line 861
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 867
    .end local v1    # "i":I
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 3
    .param p1, "userId"    # I

    .line 383
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 384
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method isCallerRecents(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 273
    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method isRecentsComponent(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .line 281
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isRecentsComponentHomeActivity(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 288
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 290
    .local v0, "defaultHomeActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_22

    .line 291
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 290
    :goto_23
    return v1
.end method

.method protected isTrimmable(Lcom/android/server/am/TaskRecord;)Z
    .registers 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1221
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1222
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1225
    .local v1, "homeStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x1

    if-nez v0, :cond_e

    .line 1226
    return v2

    .line 1230
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1a

    .line 1231
    return v5

    .line 1235
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    .line 1236
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v4

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v6

    if-ge v4, v6, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v5

    :goto_2a
    return v2
.end method

.method loadParametersFromResources(Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 220
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 221
    const v0, 0x10e0064

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 223
    const v0, 0x10e005c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_48

    .line 225
    :cond_19
    const-string/jumbo v0, "ro.recents.grid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 226
    const v0, 0x10e0063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 228
    const v0, 0x10e005b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_48

    .line 231
    :cond_36
    const v0, 0x10e0062

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 233
    const v0, 0x10e005a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    .line 236
    :goto_48
    const v0, 0x10e0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 238
    .local v0, "sessionDurationHrs":I
    if-lez v0, :cond_59

    .line 239
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    goto :goto_5b

    .line 240
    :cond_59
    const-wide/16 v1, -0x1

    :goto_5b
    iput-wide v1, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 241
    return-void
.end method

.method loadRecentsComponent(Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 248
    const v0, 0x1040175

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "rawRecentsComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 251
    return-void

    .line 254
    :cond_e
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 255
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_49

    .line 257
    :try_start_14
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 258
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 259
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_31

    .line 260
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 261
    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_31} :catch_32

    .line 265
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_31
    goto :goto_49

    .line 263
    :catch_32
    move-exception v2

    .line 264
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load application info for recents component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_49
    :goto_49
    return-void
.end method

.method loadUserRecentsLocked(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 335
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 337
    return-void

    .line 341
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 344
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 345
    .local v0, "preaddedTasks":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 346
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_33

    invoke-static {v2}, Lcom/android/server/am/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 347
    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 349
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_33
    goto :goto_17

    .line 351
    :cond_34
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading recents for user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " into memory."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    .line 354
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 357
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_6b

    .line 358
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 360
    :cond_6b
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    .line 391
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 392
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    :goto_8
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 394
    return-void

    .line 396
    :cond_11
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 397
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/TaskPersister;->wakeup(Lcom/android/server/am/TaskRecord;Z)V

    .line 398
    return-void
.end method

.method onLockTaskModeStateChanged(II)V
    .registers 6
    .param p1, "lockTaskModeState"    # I
    .param p2, "userId"    # I

    .line 523
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 524
    return-void

    .line 526
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_b
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    if-ltz v0, :cond_2c

    .line 527
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 528
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p2, :cond_29

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/LockTaskController;->isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 529
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 526
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_29
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_b

    .line 532
    .end local v1    # "i":I
    :cond_2c
    return-void
.end method

.method onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .registers 12
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "userId"    # I

    .line 505
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 506
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 506
    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_45

    .line 507
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 508
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_42

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 509
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p3, :cond_42

    iget-boolean v4, v3, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eq v4, p2, :cond_42

    .line 512
    iput-boolean p2, v3, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    .line 513
    const/4 v4, 0x0

    if-eqz p2, :cond_3f

    .line 514
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v7, "suspended-package"

    invoke-virtual {v5, v6, v4, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 517
    :cond_3f
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 506
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 520
    .end local v1    # "i":I
    :cond_45
    return-void
.end method

.method onSystemReadyLocked()V
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->loadRecentsComponent(Landroid/content/res/Resources;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 432
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->startPersisting()V

    .line 433
    return-void
.end method

.method registerCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/am/RecentTasks$Callbacks;

    .line 309
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method remove(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1019
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1020
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1021
    return-void
.end method

.method removeTasksByPackageName(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 535
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 535
    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 536
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 537
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    nop

    .line 538
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, "taskPackageName":Ljava/lang/String;
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, p2, :cond_24

    .line 539
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    goto :goto_37

    .line 540
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskPackageName":Ljava/lang/String;
    :cond_24
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 540
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    goto :goto_37

    .line 542
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskPackageName":Ljava/lang/String;
    :cond_2b
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v6, "remove-package-task"

    invoke-virtual {v4, v5, v1, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 535
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 545
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method setGlobalMaxNumTasks(I)V
    .registers 2
    .param p1, "globalMaxNumTasks"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 212
    iput p1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 213
    return-void
.end method

.method setParameters(IIJ)V
    .registers 5
    .param p1, "minNumVisibleTasks"    # I
    .param p2, "maxNumVisibleTasks"    # I
    .param p3, "activeSessionDurationMs"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 205
    iput p1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 206
    iput p2, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    .line 207
    iput-wide p3, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 208
    return-void
.end method

.method unloadUserDataFromMemoryLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 478
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 479
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unloading recents for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 481
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->removeTasksForUserLocked(I)V

    .line 483
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 484
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->unloadUserDataFromMemory(I)V

    .line 485
    return-void
.end method

.method unregisterCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/am/RecentTasks$Callbacks;

    .line 313
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method usersWithRecentsLoadedLocked()[I
    .registers 6

    .line 456
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 457
    .local v0, "usersWithRecentsLoaded":[I
    const/4 v1, 0x0

    .line 458
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_23

    .line 459
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 460
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 461
    add-int/lit8 v4, v1, 0x1

    .local v4, "len":I
    aput v3, v0, v1

    .line 458
    .end local v1    # "len":I
    .end local v3    # "userId":I
    move v1, v4

    .end local v4    # "len":I
    .restart local v1    # "len":I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 464
    .end local v2    # "i":I
    :cond_23
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 466
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2

    .line 468
    :cond_2b
    return-object v0
.end method
