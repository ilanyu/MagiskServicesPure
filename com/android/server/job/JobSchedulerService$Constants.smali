.class public Lcom/android/server/job/JobSchedulerService$Constants;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_BG_CRITICAL_JOB_COUNT:I = 0x1

.field private static final DEFAULT_BG_LOW_JOB_COUNT:I = 0x1

.field private static final DEFAULT_BG_MODERATE_JOB_COUNT:I = 0x4

.field private static final DEFAULT_BG_NORMAL_JOB_COUNT:I = 0x6

.field private static final DEFAULT_CONN_CONGESTION_DELAY_FRAC:F = 0.5f

.field private static final DEFAULT_CONN_PREFETCH_RELAX_FRAC:F = 0.5f

.field private static final DEFAULT_FG_JOB_COUNT:I = 0x4

.field private static final DEFAULT_HEAVY_USE_FACTOR:F = 0.9f

.field private static final DEFAULT_MAX_STANDARD_RESCHEDULE_COUNT:I = 0x7fffffff

.field private static final DEFAULT_MAX_WORK_RESCHEDULE_COUNT:I = 0x7fffffff

.field private static final DEFAULT_MIN_BATTERY_NOT_LOW_COUNT:I = 0x1

.field private static final DEFAULT_MIN_CHARGING_COUNT:I = 0x1

.field private static final DEFAULT_MIN_CONNECTIVITY_COUNT:I = 0x1

.field private static final DEFAULT_MIN_CONTENT_COUNT:I = 0x1

.field private static final DEFAULT_MIN_EXP_BACKOFF_TIME:J = 0x2710L

.field private static final DEFAULT_MIN_IDLE_COUNT:I = 0x1

.field private static final DEFAULT_MIN_LINEAR_BACKOFF_TIME:J = 0x2710L

.field private static final DEFAULT_MIN_READY_JOBS_COUNT:I = 0x1

.field private static final DEFAULT_MIN_STORAGE_NOT_LOW_COUNT:I = 0x1

.field private static final DEFAULT_MODERATE_USE_FACTOR:F = 0.5f

.field private static final DEFAULT_STANDBY_FREQUENT_BEATS:I = 0x2b

.field private static final DEFAULT_STANDBY_HEARTBEAT_TIME:J = 0xa1220L

.field private static final DEFAULT_STANDBY_RARE_BEATS:I = 0x82

.field private static final DEFAULT_STANDBY_WORKING_BEATS:I = 0xb

.field private static final KEY_BG_CRITICAL_JOB_COUNT:Ljava/lang/String; = "bg_critical_job_count"

.field private static final KEY_BG_LOW_JOB_COUNT:Ljava/lang/String; = "bg_low_job_count"

.field private static final KEY_BG_MODERATE_JOB_COUNT:Ljava/lang/String; = "bg_moderate_job_count"

.field private static final KEY_BG_NORMAL_JOB_COUNT:Ljava/lang/String; = "bg_normal_job_count"

.field private static final KEY_CONN_CONGESTION_DELAY_FRAC:Ljava/lang/String; = "conn_congestion_delay_frac"

.field private static final KEY_CONN_PREFETCH_RELAX_FRAC:Ljava/lang/String; = "conn_prefetch_relax_frac"

.field private static final KEY_FG_JOB_COUNT:Ljava/lang/String; = "fg_job_count"

.field private static final KEY_HEAVY_USE_FACTOR:Ljava/lang/String; = "heavy_use_factor"

.field private static final KEY_MAX_STANDARD_RESCHEDULE_COUNT:Ljava/lang/String; = "max_standard_reschedule_count"

.field private static final KEY_MAX_WORK_RESCHEDULE_COUNT:Ljava/lang/String; = "max_work_reschedule_count"

.field private static final KEY_MIN_BATTERY_NOT_LOW_COUNT:Ljava/lang/String; = "min_battery_not_low_count"

.field private static final KEY_MIN_CHARGING_COUNT:Ljava/lang/String; = "min_charging_count"

.field private static final KEY_MIN_CONNECTIVITY_COUNT:Ljava/lang/String; = "min_connectivity_count"

.field private static final KEY_MIN_CONTENT_COUNT:Ljava/lang/String; = "min_content_count"

.field private static final KEY_MIN_EXP_BACKOFF_TIME:Ljava/lang/String; = "min_exp_backoff_time"

.field private static final KEY_MIN_IDLE_COUNT:Ljava/lang/String; = "min_idle_count"

.field private static final KEY_MIN_LINEAR_BACKOFF_TIME:Ljava/lang/String; = "min_linear_backoff_time"

.field private static final KEY_MIN_READY_JOBS_COUNT:Ljava/lang/String; = "min_ready_jobs_count"

.field private static final KEY_MIN_STORAGE_NOT_LOW_COUNT:Ljava/lang/String; = "min_storage_not_low_count"

.field private static final KEY_MODERATE_USE_FACTOR:Ljava/lang/String; = "moderate_use_factor"

.field private static final KEY_STANDBY_FREQUENT_BEATS:Ljava/lang/String; = "standby_frequent_beats"

.field private static final KEY_STANDBY_HEARTBEAT_TIME:Ljava/lang/String; = "standby_heartbeat_time"

.field private static final KEY_STANDBY_RARE_BEATS:Ljava/lang/String; = "standby_rare_beats"

.field private static final KEY_STANDBY_WORKING_BEATS:Ljava/lang/String; = "standby_working_beats"


# instance fields
.field BG_CRITICAL_JOB_COUNT:I

.field BG_LOW_JOB_COUNT:I

.field BG_MODERATE_JOB_COUNT:I

.field BG_NORMAL_JOB_COUNT:I

.field public CONN_CONGESTION_DELAY_FRAC:F

.field public CONN_PREFETCH_RELAX_FRAC:F

.field FG_JOB_COUNT:I

.field HEAVY_USE_FACTOR:F

.field MAX_STANDARD_RESCHEDULE_COUNT:I

.field MAX_WORK_RESCHEDULE_COUNT:I

.field MIN_BATTERY_NOT_LOW_COUNT:I

.field MIN_CHARGING_COUNT:I

.field MIN_CONNECTIVITY_COUNT:I

.field MIN_CONTENT_COUNT:I

.field MIN_EXP_BACKOFF_TIME:J

.field MIN_IDLE_COUNT:I

.field MIN_LINEAR_BACKOFF_TIME:J

.field MIN_READY_JOBS_COUNT:I

.field MIN_STORAGE_NOT_LOW_COUNT:I

.field MODERATE_USE_FACTOR:F

.field final STANDBY_BEATS:[I

.field STANDBY_HEARTBEAT_TIME:J

.field private final mParser:Landroid/util/KeyValueListParser;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    .line 394
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    .line 399
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_BATTERY_NOT_LOW_COUNT:I

    .line 404
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_STORAGE_NOT_LOW_COUNT:I

    .line 409
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    .line 414
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    .line 421
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    .line 425
    const v1, 0x3f666666    # 0.9f

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 429
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    .line 433
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    .line 438
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    .line 443
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    .line 448
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    .line 453
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    .line 458
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    .line 463
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_WORK_RESCHEDULE_COUNT:I

    .line 467
    const-wide/16 v3, 0x2710

    iput-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    .line 471
    iput-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    .line 477
    const-wide/32 v3, 0xa1220

    iput-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    .line 486
    new-array v0, v2, [I

    fill-array-data v0, :array_4e

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    .line 496
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 501
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    .line 503
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    return-void

    :array_4e
    .array-data 4
        0x0
        0xb
        0x2b
        0x82
    .end array-data
.end method


# virtual methods
.method dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 611
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 612
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 613
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 614
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_BATTERY_NOT_LOW_COUNT:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 615
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_STORAGE_NOT_LOW_COUNT:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 616
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 617
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 618
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 619
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    const-wide v3, 0x10100000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 620
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    const-wide v3, 0x10100000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 621
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    const-wide v3, 0x1050000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 622
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 623
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    const-wide v3, 0x1050000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 624
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    const-wide v3, 0x1050000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 625
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    const-wide v3, 0x1050000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 626
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    const-wide v3, 0x1050000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 627
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_WORK_RESCHEDULE_COUNT:I

    const-wide v3, 0x10500000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 628
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    const-wide v4, 0x10300000011L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 629
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    const-wide v4, 0x10300000012L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 630
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    const-wide v4, 0x10300000013L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 631
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_c6
    if-ge v4, v3, :cond_d5

    aget v5, v2, v4

    .line 632
    .local v5, "period":I
    const-wide v6, 0x20500000014L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 631
    .end local v5    # "period":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_c6

    .line 634
    :cond_d5
    const-wide v2, 0x10100000015L

    iget v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 635
    const-wide v2, 0x10100000016L

    iget v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 636
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 637
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 577
    const-string v0, "Settings:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 579
    const-string/jumbo v0, "min_idle_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 580
    const-string/jumbo v0, "min_charging_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 581
    const-string/jumbo v0, "min_battery_not_low_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_BATTERY_NOT_LOW_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 582
    const-string/jumbo v0, "min_storage_not_low_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_STORAGE_NOT_LOW_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 583
    const-string/jumbo v0, "min_connectivity_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 584
    const-string/jumbo v0, "min_content_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 585
    const-string/jumbo v0, "min_ready_jobs_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 586
    const-string v0, "heavy_use_factor"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 587
    const-string/jumbo v0, "moderate_use_factor"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 588
    const-string v0, "fg_job_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 589
    const-string v0, "bg_normal_job_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 590
    const-string v0, "bg_moderate_job_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 591
    const-string v0, "bg_low_job_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 592
    const-string v0, "bg_critical_job_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 593
    const-string/jumbo v0, "max_standard_reschedule_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 594
    const-string/jumbo v0, "max_work_reschedule_count"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_WORK_RESCHEDULE_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 595
    const-string/jumbo v0, "min_linear_backoff_time"

    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 596
    const-string/jumbo v0, "min_exp_backoff_time"

    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 597
    const-string/jumbo v0, "standby_heartbeat_time"

    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 598
    const-string/jumbo v0, "standby_beats={"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 600
    const/4 v0, 0x1

    .line 600
    .local v0, "i":I
    :goto_141
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_155

    .line 601
    const-string v1, ", "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 602
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_141

    .line 604
    .end local v0    # "i":I
    :cond_155
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(C)V

    .line 605
    const-string v0, "conn_congestion_delay_frac"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 606
    const-string v0, "conn_prefetch_relax_frac"

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 607
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 608
    return-void
.end method

.method updateConstantsLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 512
    goto :goto_e

    .line 508
    :catch_6
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "JobScheduler"

    const-string v2, "Bad jobscheduler settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "min_idle_count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    .line 516
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "min_charging_count"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    .line 518
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "min_battery_not_low_count"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_BATTERY_NOT_LOW_COUNT:I

    .line 520
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "min_storage_not_low_count"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_STORAGE_NOT_LOW_COUNT:I

    .line 522
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "min_connectivity_count"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    .line 524
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "min_content_count"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    .line 526
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "min_ready_jobs_count"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    .line 528
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "heavy_use_factor"

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 530
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "moderate_use_factor"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    .line 532
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "fg_job_count"

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    .line 534
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "bg_normal_job_count"

    const/4 v5, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    .line 536
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    add-int/2addr v0, v1

    const/16 v1, 0x10

    if-le v0, v1, :cond_9b

    .line 537
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    rsub-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    .line 539
    :cond_9b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v5, "bg_moderate_job_count"

    invoke-virtual {v0, v5, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    .line 541
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    iget v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    add-int/2addr v0, v4

    if-le v0, v1, :cond_b2

    .line 542
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    rsub-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    .line 544
    :cond_b2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "bg_low_job_count"

    invoke-virtual {v0, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    .line 546
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    iget v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    add-int/2addr v0, v4

    if-le v0, v1, :cond_c9

    .line 547
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    rsub-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    .line 549
    :cond_c9
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "bg_critical_job_count"

    invoke-virtual {v0, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    .line 551
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    iget v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    add-int/2addr v0, v4

    if-le v0, v1, :cond_df

    .line 552
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    .line 554
    :cond_df
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "max_standard_reschedule_count"

    const v4, 0x7fffffff

    invoke-virtual {v0, v1, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    .line 556
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "max_work_reschedule_count"

    invoke-virtual {v0, v1, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_WORK_RESCHEDULE_COUNT:I

    .line 558
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "min_linear_backoff_time"

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    .line 560
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "min_exp_backoff_time"

    invoke-virtual {v0, v1, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    .line 562
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "standby_heartbeat_time"

    const-wide/32 v4, 0xa1220

    invoke-virtual {v0, v1, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    .line 564
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "standby_working_beats"

    const/16 v5, 0xb

    invoke-virtual {v1, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v2

    .line 566
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "standby_frequent_beats"

    const/16 v5, 0x2b

    invoke-virtual {v2, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .line 568
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "standby_rare_beats"

    const/16 v5, 0x82

    invoke-virtual {v2, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .line 570
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "conn_congestion_delay_frac"

    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 572
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "conn_prefetch_relax_frac"

    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    .line 574
    return-void
.end method
