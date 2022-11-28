.class public final Lcom/google/api/Distribution$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/DistributionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution;",
        "Lcom/google/api/Distribution$Builder;",
        ">;",
        "Lcom/google/api/DistributionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4165
    invoke-static {}, Lcom/google/api/Distribution;->access$5300()Lcom/google/api/Distribution;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0

    .line 4158
    invoke-direct {p0}, Lcom/google/api/Distribution$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllBucketCounts(Ljava/lang/Iterable;)Lcom/google/api/Distribution$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/api/Distribution$Builder;"
        }
    .end annotation

    .line 4618
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4619
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6800(Lcom/google/api/Distribution;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllExemplars(Ljava/lang/Iterable;)Lcom/google/api/Distribution$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;)",
            "Lcom/google/api/Distribution$Builder;"
        }
    .end annotation

    .line 4769
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4770
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7300(Lcom/google/api/Distribution;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addBucketCounts(J)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4591
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4592
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$6700(Lcom/google/api/Distribution;J)V

    return-object p0
.end method

.method public addExemplars(ILcom/google/api/Distribution$Exemplar$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4755
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4756
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4757
    invoke-virtual {p2}, Lcom/google/api/Distribution$Exemplar$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Distribution$Exemplar;

    .line 4756
    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public addExemplars(ILcom/google/api/Distribution$Exemplar;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4729
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4730
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public addExemplars(Lcom/google/api/Distribution$Exemplar$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4742
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4743
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {p1}, Lcom/google/api/Distribution$Exemplar$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7100(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public addExemplars(Lcom/google/api/Distribution$Exemplar;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4716
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4717
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7100(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public clearBucketCounts()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4643
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4644
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$6900(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearBucketOptions()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4462
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4463
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$6500(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearCount()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4210
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4211
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$5500(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearExemplars()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4781
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4782
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$7400(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearMean()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4253
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4254
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$5700(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearRange()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4385
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4386
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$6200(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearSumOfSquaredDeviation()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4308
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4309
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$5900(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public getBucketCounts(I)J
    .locals 2

    .line 4540
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution;->getBucketCounts(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBucketCountsCount()I
    .locals 1

    .line 4515
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getBucketCountsCount()I

    move-result v0

    return v0
.end method

.method public getBucketCountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 4490
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4491
    invoke-virtual {v0}, Lcom/google/api/Distribution;->getBucketCountsList()Ljava/util/List;

    move-result-object v0

    .line 4490
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBucketOptions()Lcom/google/api/Distribution$BucketOptions;
    .locals 1

    .line 4412
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getBucketOptions()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCount()J
    .locals 2

    .line 4181
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExemplars(I)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 4679
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution;->getExemplars(I)Lcom/google/api/Distribution$Exemplar;

    move-result-object p1

    return-object p1
.end method

.method public getExemplarsCount()I
    .locals 1

    .line 4669
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getExemplarsCount()I

    move-result v0

    return v0
.end method

.method public getExemplarsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;"
        }
    .end annotation

    .line 4657
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4658
    invoke-virtual {v0}, Lcom/google/api/Distribution;->getExemplarsList()Ljava/util/List;

    move-result-object v0

    .line 4657
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMean()D
    .locals 2

    .line 4226
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRange()Lcom/google/api/Distribution$Range;
    .locals 1

    .line 4335
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getRange()Lcom/google/api/Distribution$Range;

    move-result-object v0

    return-object v0
.end method

.method public getSumOfSquaredDeviation()D
    .locals 2

    .line 4273
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getSumOfSquaredDeviation()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasBucketOptions()Z
    .locals 1

    .line 4400
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->hasBucketOptions()Z

    move-result v0

    return v0
.end method

.method public hasRange()Z
    .locals 1

    .line 4323
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->hasRange()Z

    move-result v0

    return v0
.end method

.method public mergeBucketOptions(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4450
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4451
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6400(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0
.end method

.method public mergeRange(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4373
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4374
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6100(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)V

    return-object p0
.end method

.method public removeExemplars(I)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4793
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4794
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7500(Lcom/google/api/Distribution;I)V

    return-object p0
.end method

.method public setBucketCounts(IJ)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4565
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4566
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2, p3}, Lcom/google/api/Distribution;->access$6600(Lcom/google/api/Distribution;IJ)V

    return-object p0
.end method

.method public setBucketOptions(Lcom/google/api/Distribution$BucketOptions$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4437
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4438
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6300(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0
.end method

.method public setBucketOptions(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4423
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4424
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6300(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0
.end method

.method public setCount(J)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4195
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4196
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$5400(Lcom/google/api/Distribution;J)V

    return-object p0
.end method

.method public setExemplars(ILcom/google/api/Distribution$Exemplar$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4703
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4704
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4705
    invoke-virtual {p2}, Lcom/google/api/Distribution$Exemplar$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Distribution$Exemplar;

    .line 4704
    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7000(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public setExemplars(ILcom/google/api/Distribution$Exemplar;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4690
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4691
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7000(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public setMean(D)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4239
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4240
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$5600(Lcom/google/api/Distribution;D)V

    return-object p0
.end method

.method public setRange(Lcom/google/api/Distribution$Range$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4360
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4361
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {p1}, Lcom/google/api/Distribution$Range$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$Range;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6000(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)V

    return-object p0
.end method

.method public setRange(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4346
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4347
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6000(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)V

    return-object p0
.end method

.method public setSumOfSquaredDeviation(D)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4290
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4291
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$5800(Lcom/google/api/Distribution;D)V

    return-object p0
.end method
