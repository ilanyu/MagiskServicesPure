.class Lcom/android/server/location/GnssLocalLog;
.super Ljava/lang/Object;
.source "GnssLocalLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GnssLocalLog"


# instance fields
.field private mGlpEn:Ljava/lang/String;

.field private mLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLines:I

.field private mNmea:Ljava/lang/String;

.field private mNow:J


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "maxLines"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "=MI GLP EN="

    iput-object v0, p0, Lcom/android/server/location/GnssLocalLog;->mGlpEn:Ljava/lang/String;

    .line 15
    const-string v0, "=MI NMEA="

    iput-object v0, p0, Lcom/android/server/location/GnssLocalLog;->mNmea:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocalLog;->mLog:Ljava/util/LinkedList;

    .line 23
    iput p1, p0, Lcom/android/server/location/GnssLocalLog;->mMaxLines:I

    .line 24
    return-void
.end method

.method private getRawString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "rawString"    # Ljava/lang/String;
    .param p2, "keyWord"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "keyWord"    # Ljava/lang/String;

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 85
    const-string v1, "GnssLocalLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no keyWord "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " here\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v1, "get time error "

    return-object v1

    .line 88
    :cond_26
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isPresence(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "max"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/GnssLocalLog;->mLog:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9c

    .line 53
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    :try_start_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, "log":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssLocalLog;->mGlpEn:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GnssLocalLog;->isPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/GnssLocalLog;->mGlpEn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/location/GnssLocalLog;->mGlpEn:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/server/location/GnssLocalLog;->getTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/GnssLocalLog;->mGlpEn:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/server/location/GnssLocalLog;->getRawString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/location/AESCrypt;->encText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8f

    .line 61
    :cond_50
    iget-object v2, p0, Lcom/android/server/location/GnssLocalLog;->mNmea:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GnssLocalLog;->isPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/GnssLocalLog;->mNmea:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/location/GnssLocalLog;->mNmea:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/server/location/GnssLocalLog;->getTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/GnssLocalLog;->mNmea:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/server/location/GnssLocalLog;->getRawString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/location/AESCrypt;->encText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8f

    .line 67
    :cond_8c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8f} :catch_92
    .catchall {:try_start_8 .. :try_end_8f} :catchall_9c

    .line 68
    .end local v1    # "log":Ljava/lang/String;
    :goto_8f
    goto/16 :goto_8

    .line 71
    :cond_91
    goto :goto_9a

    .line 69
    :catch_92
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    :try_start_93
    const-string v2, "GnssLocalLog"

    const-string v3, "Error encountered on encrypt the log."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_9c

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9a
    monitor-exit p0

    return-void

    .line 50
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_9c
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/GnssLocalLog;
    throw p1
.end method

.method public declared-synchronized log(Ljava/lang/String;)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 39
    :try_start_1
    iget v0, p0, Lcom/android/server/location/GnssLocalLog;->mMaxLines:I

    if-lez v0, :cond_64

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocalLog;->mNow:J

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 43
    .local v1, "c":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/android/server/location/GnssLocalLog;->mNow:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 44
    const-string v2, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v4, 0x4

    aput-object v1, v3, v4

    const/4 v4, 0x5

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v2, p0, Lcom/android/server/location/GnssLocalLog;->mLog:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_54
    iget-object v2, p0, Lcom/android/server/location/GnssLocalLog;->mLog:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/location/GnssLocalLog;->mMaxLines:I

    if-le v2, v3, :cond_64

    iget-object v2, p0, Lcom/android/server/location/GnssLocalLog;->mLog:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_66

    goto :goto_54

    .line 48
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "c":Ljava/util/Calendar;
    :cond_64
    monitor-exit p0

    return-void

    .line 38
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_66
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/GnssLocalLog;
    throw p1
.end method

.method public setLength(I)I
    .registers 2
    .param p1, "length"    # I

    .line 33
    if-lez p1, :cond_4

    .line 34
    iput p1, p0, Lcom/android/server/location/GnssLocalLog;->mMaxLines:I

    .line 35
    :cond_4
    return p1
.end method
