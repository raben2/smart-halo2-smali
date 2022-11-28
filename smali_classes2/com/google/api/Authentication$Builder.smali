.class public final Lcom/google/api/Authentication$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Authentication.java"

# interfaces
.implements Lcom/google/api/AuthenticationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Authentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Authentication;",
        "Lcom/google/api/Authentication$Builder;",
        ">;",
        "Lcom/google/api/AuthenticationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 424
    invoke-static {}, Lcom/google/api/Authentication;->access$000()Lcom/google/api/Authentication;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Authentication$1;)V
    .locals 0

    .line 417
    invoke-direct {p0}, Lcom/google/api/Authentication$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllProviders(Ljava/lang/Iterable;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthProvider;",
            ">;)",
            "Lcom/google/api/Authentication$Builder;"
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 712
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$1000(Lcom/google/api/Authentication;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthenticationRule;",
            ">;)",
            "Lcom/google/api/Authentication$Builder;"
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 560
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$400(Lcom/google/api/Authentication;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addProviders(ILcom/google/api/AuthProvider$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 698
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 699
    invoke-virtual {p2}, Lcom/google/api/AuthProvider$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthProvider;

    .line 698
    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$900(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    return-object p0
.end method

.method public addProviders(ILcom/google/api/AuthProvider;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 671
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 672
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$900(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    return-object p0
.end method

.method public addProviders(Lcom/google/api/AuthProvider$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 684
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 685
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {p1}, Lcom/google/api/AuthProvider$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$800(Lcom/google/api/Authentication;Lcom/google/api/AuthProvider;)V

    return-object p0
.end method

.method public addProviders(Lcom/google/api/AuthProvider;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 658
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 659
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$800(Lcom/google/api/Authentication;Lcom/google/api/AuthProvider;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/AuthenticationRule$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 544
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 545
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 546
    invoke-virtual {p2}, Lcom/google/api/AuthenticationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthenticationRule;

    .line 545
    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$300(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/AuthenticationRule;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$300(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/AuthenticationRule$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {p1}, Lcom/google/api/AuthenticationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$200(Lcom/google/api/Authentication;Lcom/google/api/AuthenticationRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/AuthenticationRule;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 502
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 503
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$200(Lcom/google/api/Authentication;Lcom/google/api/AuthenticationRule;)V

    return-object p0
.end method

.method public clearProviders()Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 723
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 724
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0}, Lcom/google/api/Authentication;->access$1100(Lcom/google/api/Authentication;)V

    return-object p0
.end method

.method public clearRules()Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 572
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 573
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0}, Lcom/google/api/Authentication;->access$500(Lcom/google/api/Authentication;)V

    return-object p0
.end method

.method public getProviders(I)Lcom/google/api/AuthProvider;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0, p1}, Lcom/google/api/Authentication;->getProviders(I)Lcom/google/api/AuthProvider;

    move-result-object p1

    return-object p1
.end method

.method public getProvidersCount()I
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0}, Lcom/google/api/Authentication;->getProvidersCount()I

    move-result v0

    return v0
.end method

.method public getProvidersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthProvider;",
            ">;"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 600
    invoke-virtual {v0}, Lcom/google/api/Authentication;->getProvidersList()Ljava/util/List;

    move-result-object v0

    .line 599
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRules(I)Lcom/google/api/AuthenticationRule;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0, p1}, Lcom/google/api/Authentication;->getRules(I)Lcom/google/api/AuthenticationRule;

    move-result-object p1

    return-object p1
.end method

.method public getRulesCount()I
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0}, Lcom/google/api/Authentication;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthenticationRule;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 439
    invoke-virtual {v0}, Lcom/google/api/Authentication;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 438
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeProviders(I)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 736
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$1200(Lcom/google/api/Authentication;I)V

    return-object p0
.end method

.method public removeRules(I)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 586
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$600(Lcom/google/api/Authentication;I)V

    return-object p0
.end method

.method public setProviders(ILcom/google/api/AuthProvider$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 645
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 646
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 647
    invoke-virtual {p2}, Lcom/google/api/AuthProvider$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthProvider;

    .line 646
    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$700(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    return-object p0
.end method

.method public setProviders(ILcom/google/api/AuthProvider;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 633
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$700(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/AuthenticationRule$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 488
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 489
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 490
    invoke-virtual {p2}, Lcom/google/api/AuthenticationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthenticationRule;

    .line 489
    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$100(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/AuthenticationRule;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 474
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 475
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$100(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    return-object p0
.end method
