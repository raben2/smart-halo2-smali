.class public final Lcom/google/api/Quota$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Quota.java"

# interfaces
.implements Lcom/google/api/QuotaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Quota;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Quota;",
        "Lcom/google/api/Quota$Builder;",
        ">;",
        "Lcom/google/api/QuotaOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 480
    invoke-static {}, Lcom/google/api/Quota;->access$000()Lcom/google/api/Quota;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Quota$1;)V
    .locals 0

    .line 473
    invoke-direct {p0}, Lcom/google/api/Quota$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLimits(Ljava/lang/Iterable;)Lcom/google/api/Quota$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/QuotaLimit;",
            ">;)",
            "Lcom/google/api/Quota$Builder;"
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$400(Lcom/google/api/Quota;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllMetricRules(Ljava/lang/Iterable;)Lcom/google/api/Quota$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MetricRule;",
            ">;)",
            "Lcom/google/api/Quota$Builder;"
        }
    .end annotation

    .line 765
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 766
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$1000(Lcom/google/api/Quota;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLimits(ILcom/google/api/QuotaLimit$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 591
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 592
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 593
    invoke-virtual {p2}, Lcom/google/api/QuotaLimit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/QuotaLimit;

    .line 592
    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$300(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    return-object p0
.end method

.method public addLimits(ILcom/google/api/QuotaLimit;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$300(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    return-object p0
.end method

.method public addLimits(Lcom/google/api/QuotaLimit$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 578
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 579
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {p1}, Lcom/google/api/QuotaLimit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$200(Lcom/google/api/Quota;Lcom/google/api/QuotaLimit;)V

    return-object p0
.end method

.method public addLimits(Lcom/google/api/QuotaLimit;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$200(Lcom/google/api/Quota;Lcom/google/api/QuotaLimit;)V

    return-object p0
.end method

.method public addMetricRules(ILcom/google/api/MetricRule$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 751
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 752
    invoke-virtual {p2}, Lcom/google/api/MetricRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/MetricRule;

    .line 751
    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$900(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    return-object p0
.end method

.method public addMetricRules(ILcom/google/api/MetricRule;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$900(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    return-object p0
.end method

.method public addMetricRules(Lcom/google/api/MetricRule$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 736
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {p1}, Lcom/google/api/MetricRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricRule;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$800(Lcom/google/api/Quota;Lcom/google/api/MetricRule;)V

    return-object p0
.end method

.method public addMetricRules(Lcom/google/api/MetricRule;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 708
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 709
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$800(Lcom/google/api/Quota;Lcom/google/api/MetricRule;)V

    return-object p0
.end method

.method public clearLimits()Lcom/google/api/Quota$Builder;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 618
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0}, Lcom/google/api/Quota;->access$500(Lcom/google/api/Quota;)V

    return-object p0
.end method

.method public clearMetricRules()Lcom/google/api/Quota$Builder;
    .locals 1

    .line 778
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 779
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0}, Lcom/google/api/Quota;->access$1100(Lcom/google/api/Quota;)V

    return-object p0
.end method

.method public getLimits(I)Lcom/google/api/QuotaLimit;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0, p1}, Lcom/google/api/Quota;->getLimits(I)Lcom/google/api/QuotaLimit;

    move-result-object p1

    return-object p1
.end method

.method public getLimitsCount()I
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0}, Lcom/google/api/Quota;->getLimitsCount()I

    move-result v0

    return v0
.end method

.method public getLimitsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/QuotaLimit;",
            ">;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 494
    invoke-virtual {v0}, Lcom/google/api/Quota;->getLimitsList()Ljava/util/List;

    move-result-object v0

    .line 493
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetricRules(I)Lcom/google/api/MetricRule;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0, p1}, Lcom/google/api/Quota;->getMetricRules(I)Lcom/google/api/MetricRule;

    move-result-object p1

    return-object p1
.end method

.method public getMetricRulesCount()I
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0}, Lcom/google/api/Quota;->getMetricRulesCount()I

    move-result v0

    return v0
.end method

.method public getMetricRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricRule;",
            ">;"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 645
    invoke-virtual {v0}, Lcom/google/api/Quota;->getMetricRulesList()Ljava/util/List;

    move-result-object v0

    .line 644
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeLimits(I)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 630
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$600(Lcom/google/api/Quota;I)V

    return-object p0
.end method

.method public removeMetricRules(I)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 791
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 792
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$1200(Lcom/google/api/Quota;I)V

    return-object p0
.end method

.method public setLimits(ILcom/google/api/QuotaLimit$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 540
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 541
    invoke-virtual {p2}, Lcom/google/api/QuotaLimit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/QuotaLimit;

    .line 540
    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$100(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    return-object p0
.end method

.method public setLimits(ILcom/google/api/QuotaLimit;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 526
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 527
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$100(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    return-object p0
.end method

.method public setMetricRules(ILcom/google/api/MetricRule$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 695
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 696
    invoke-virtual {p2}, Lcom/google/api/MetricRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/MetricRule;

    .line 695
    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$700(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    return-object p0
.end method

.method public setMetricRules(ILcom/google/api/MetricRule;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 680
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 681
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$700(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    return-object p0
.end method
