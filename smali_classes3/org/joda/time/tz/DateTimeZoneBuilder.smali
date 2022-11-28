.class public Lorg/joda/time/tz/DateTimeZoneBuilder;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;
    }
.end annotation


# instance fields
.field private final iRuleSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    return-void
.end method

.method private addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;",
            ">;",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;",
            ")Z"
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 409
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    .line 410
    invoke-virtual {p2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->isTransitionFrom(Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return v5

    :cond_1
    const/4 v4, 0x2

    if-lt v0, v4, :cond_2

    sub-int/2addr v0, v4

    .line 419
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getWallOffset()I

    move-result v5

    .line 421
    :cond_2
    invoke-virtual {v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getWallOffset()I

    move-result v0

    .line 423
    invoke-virtual {v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v3

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 424
    invoke-virtual {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v5

    int-to-long v7, v0

    add-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-eqz v0, :cond_3

    .line 427
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    .line 431
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    .line 432
    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->withMillis(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object p2

    .line 436
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    move-result p1

    return p1
.end method

.method private static buildFixedZone(Ljava/lang/String;Ljava/lang/String;II)Lorg/joda/time/DateTimeZone;
    .locals 1

    const-string v0, "UTC"

    .line 215
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 217
    sget-object p0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    return-object p0

    .line 219
    :cond_0
    new-instance v0, Lorg/joda/time/tz/FixedDateTimeZone;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/joda/time/tz/FixedDateTimeZone;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method private getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;
    .locals 9

    .line 320
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v2, -0x80000000

    const/16 v3, 0x77

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 321
    invoke-virtual/range {v1 .. v8}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addCutover(ICIIIZI)Lorg/joda/time/tz/DateTimeZoneBuilder;

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    return-object v0
.end method

.method public static readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_3

    const/16 v1, 0x46

    if-eq v0, v1, :cond_1

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    .line 121
    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    move-result-object p0

    return-object p0

    .line 123
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid encoding"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_1
    new-instance v0, Lorg/joda/time/tz/FixedDateTimeZone;

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v4

    long-to-int p0, v4

    invoke-direct {v0, p1, v1, v3, p0}, Lorg/joda/time/tz/FixedDateTimeZone;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 114
    sget-object p0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p0}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 115
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    :cond_2
    return-object v0

    .line 119
    :cond_3
    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    move-result-object p0

    invoke-static {p0}, Lorg/joda/time/tz/CachedDateTimeZone;->forZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/tz/CachedDateTimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static readFrom(Ljava/io/InputStream;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    instance-of v0, p0, Ljava/io/DataInput;

    if-eqz v0, :cond_0

    .line 96
    check-cast p0, Ljava/io/DataInput;

    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object p0

    return-object p0

    .line 98
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object p0

    return-object p0
.end method

.method static readMillis(Ljava/io/DataInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    shr-int/lit8 v1, v0, 0x6

    const/16 v2, 0x1a

    packed-switch v1, :pswitch_data_0

    shl-int/lit8 p0, v0, 0x1a

    shr-int/2addr p0, v2

    int-to-long v0, p0

    const-wide/32 v2, 0x1b7740

    mul-long v0, v0, v2

    return-wide v0

    .line 209
    :pswitch_0
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    int-to-long v0, v0

    const/16 v3, 0x3a

    shl-long/2addr v0, v3

    shr-long/2addr v0, v2

    .line 201
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 202
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 203
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 204
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p0

    int-to-long v2, p0

    or-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :pswitch_2
    shl-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x2

    .line 193
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 194
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 195
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p0

    or-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long v0, v0, v2

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static writeMillis(Ljava/io/DataOutput;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x1b7740

    .line 140
    rem-long v2, p1, v0

    const-wide/16 v4, 0x3f

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    .line 142
    div-long v0, p1, v0

    const/16 v2, 0x3a

    shl-long v8, v0, v2

    shr-long v2, v8, v2

    cmp-long v8, v2, v0

    if-nez v8, :cond_0

    and-long p1, v0, v4

    long-to-int p2, p1

    .line 145
    invoke-interface {p0, p2}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    :cond_0
    const-wide/32 v0, 0xea60

    .line 150
    rem-long v2, p1, v0

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    .line 152
    div-long v0, p1, v0

    const/16 v2, 0x22

    shl-long v8, v0, v2

    shr-long v2, v8, v2

    cmp-long v8, v2, v0

    if-nez v8, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v0, v2

    long-to-int p2, v0

    or-int/2addr p1, p2

    .line 155
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeInt(I)V

    return-void

    :cond_1
    const-wide/16 v0, 0x3e8

    .line 160
    rem-long v2, p1, v0

    cmp-long v8, v2, v6

    if-nez v8, :cond_2

    .line 162
    div-long v0, p1, v0

    const/16 v2, 0x1a

    shl-long v8, v0, v2

    shr-long v2, v8, v2

    cmp-long v8, v2, v0

    if-nez v8, :cond_2

    const/16 p1, 0x20

    shr-long p1, v0, p1

    and-long/2addr p1, v4

    long-to-int p2, p1

    or-int/lit16 p1, p2, 0x80

    .line 165
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    const-wide/16 p1, -0x1

    and-long/2addr p1, v0

    long-to-int p2, p1

    .line 166
    invoke-interface {p0, p2}, Ljava/io/DataOutput;->writeInt(I)V

    return-void

    :cond_2
    cmp-long v0, p1, v6

    if-gez v0, :cond_3

    const/16 v0, 0xff

    goto :goto_0

    :cond_3
    const/16 v0, 0xc0

    .line 175
    :goto_0
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 176
    invoke-interface {p0, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public addCutover(ICIIIZI)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 8

    .line 252
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 253
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    move-object v1, v0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;-><init>(CIIIZI)V

    .line 255
    iget-object p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    .line 256
    invoke-virtual {p2, p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->setUpperLimit(ILorg/joda/time/tz/DateTimeZoneBuilder$OfYear;)V

    .line 258
    :cond_0
    iget-object p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    new-instance p2, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    invoke-direct {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRecurringSavings(Ljava/lang/String;IIICIIIZI)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 10

    move v0, p3

    move v1, p4

    if-gt v0, v1, :cond_0

    .line 310
    new-instance v9, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    move-object v2, v9

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;-><init>(CIIIZI)V

    .line 312
    new-instance v2, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-object v3, p1

    move v4, p2

    invoke-direct {v2, v9, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;-><init>(Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;Ljava/lang/String;I)V

    .line 313
    new-instance v3, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    invoke-direct {v3, v2, p3, p4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;-><init>(Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;II)V

    .line 314
    invoke-direct {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->addRule(Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;)V

    :cond_0
    return-object p0
.end method

.method public setFixedSavings(Ljava/lang/String;I)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 1

    .line 276
    invoke-direct {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->setFixedSavings(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setStandardOffset(I)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 1

    .line 268
    invoke-direct {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->setStandardOffset(I)V

    return-object p0
.end method

.method public toDateTimeZone(Ljava/lang/String;Z)Lorg/joda/time/DateTimeZone;
    .locals 12

    if-eqz p1, :cond_9

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    .line 348
    iget-object v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_4

    .line 350
    iget-object v7, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    .line 351
    invoke-virtual {v7, v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->firstTransition(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_3

    .line 355
    :cond_0
    invoke-direct {p0, v0, v8}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    .line 356
    invoke-virtual {v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v2

    .line 357
    invoke-virtual {v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getSaveMillis()I

    move-result v8

    .line 360
    new-instance v9, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    invoke-direct {v9, v7}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;-><init>(Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;)V

    .line 362
    :goto_1
    invoke-virtual {v9, v2, v3, v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->nextTransition(JI)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 363
    invoke-direct {p0, v0, v2}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    goto :goto_2

    .line 367
    :cond_1
    invoke-virtual {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v7

    .line 368
    invoke-virtual {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getSaveMillis()I

    move-result v2

    if-nez v6, :cond_2

    add-int/lit8 v3, v4, -0x1

    if-ne v1, v3, :cond_2

    .line 370
    invoke-virtual {v9, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->buildTailZone(Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    move-result-object v6

    move-wide v10, v7

    move v8, v2

    move-wide v2, v10

    goto :goto_1

    :cond_2
    move-wide v10, v7

    move v8, v2

    move-wide v2, v10

    goto :goto_1

    .line 377
    :cond_3
    :goto_2
    invoke-virtual {v9, v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->getUpperLimit(I)J

    move-result-wide v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v6, :cond_5

    return-object v6

    :cond_5
    const-string p2, "UTC"

    .line 386
    invoke-static {p1, p2, v5, v5}, Lorg/joda/time/tz/DateTimeZoneBuilder;->buildFixedZone(Ljava/lang/String;Ljava/lang/String;II)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    return-object p1

    .line 388
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    if-nez v6, :cond_7

    .line 389
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    .line 390
    invoke-virtual {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getNameKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getWallOffset()I

    move-result v1

    invoke-virtual {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getStandardOffset()I

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder;->buildFixedZone(Ljava/lang/String;Ljava/lang/String;II)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    return-object p1

    .line 394
    :cond_7
    invoke-static {p1, p2, v0, v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->create(Ljava/lang/String;ZLjava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    move-result-object p1

    .line 395
    invoke-virtual {p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->isCachable()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 396
    invoke-static {p1}, Lorg/joda/time/tz/CachedDateTimeZone;->forZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/tz/CachedDateTimeZone;

    move-result-object p1

    return-object p1

    :cond_8
    return-object p1

    .line 334
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public writeTo(Ljava/lang/String;Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 465
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->toDateTimeZone(Ljava/lang/String;Z)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 467
    instance-of v0, p1, Lorg/joda/time/tz/FixedDateTimeZone;

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    .line 468
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    const-wide/16 v0, 0x0

    .line 469
    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    .line 471
    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result p1

    int-to-long v0, p1

    invoke-static {p2, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    goto :goto_1

    .line 473
    :cond_0
    instance-of v0, p1, Lorg/joda/time/tz/CachedDateTimeZone;

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    .line 474
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 475
    check-cast p1, Lorg/joda/time/tz/CachedDateTimeZone;

    invoke-virtual {p1}, Lorg/joda/time/tz/CachedDateTimeZone;->getUncachedZone()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    .line 477
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 479
    :goto_0
    check-cast p1, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    invoke-virtual {p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->writeTo(Ljava/io/DataOutput;)V

    :goto_1
    return-void
.end method

.method public writeTo(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    instance-of v0, p2, Ljava/io/DataOutput;

    if-eqz v0, :cond_0

    .line 448
    check-cast p2, Ljava/io/DataOutput;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeTo(Ljava/lang/String;Ljava/io/DataOutput;)V

    goto :goto_0

    .line 450
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 451
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeTo(Ljava/lang/String;Ljava/io/DataOutput;)V

    .line 452
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    :goto_0
    return-void
.end method
