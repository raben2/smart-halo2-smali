.class public final Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$OneofOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$OneofOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/protobuf/DescriptorProtos$OneofOptions;",
        "Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$OneofOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21471
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$34500()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 21464
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;"
        }
    .end annotation

    .line 21596
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->copyOnWrite()V

    .line 21597
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$34900(Lcom/google/protobuf/DescriptorProtos$OneofOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 21582
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->copyOnWrite()V

    .line 21583
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    .line 21584
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 21583
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$34800(Lcom/google/protobuf/DescriptorProtos$OneofOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 21556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->copyOnWrite()V

    .line 21557
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$34800(Lcom/google/protobuf/DescriptorProtos$OneofOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 21569
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->copyOnWrite()V

    .line 21570
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$34700(Lcom/google/protobuf/DescriptorProtos$OneofOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 21543
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->copyOnWrite()V

    .line 21544
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$34700(Lcom/google/protobuf/DescriptorProtos$OneofOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 21608
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->copyOnWrite()V

    .line 21609
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$35000(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)V

    return-object p0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 21506
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    return-object p1
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 21496
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->getUninterpretedOptionCount()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 21484
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    .line 21485
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v0

    .line 21484
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 21620
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->copyOnWrite()V

    .line 21621
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$35100(Lcom/google/protobuf/DescriptorProtos$OneofOptions;I)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 21530
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->copyOnWrite()V

    .line 21531
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    .line 21532
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 21531
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$34600(Lcom/google/protobuf/DescriptorProtos$OneofOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 21517
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->copyOnWrite()V

    .line 21518
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$34600(Lcom/google/protobuf/DescriptorProtos$OneofOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method
